---
layout: post
title: "Add multiple languages for Jekyll web site"
date: 2017-08-07 10:08:00 +0800
nav: post
category: personal
tags: [jekyll, multiple-languages]
---

* content
{:toc}

如何为Jekyll网站无插件式的添加多语言功能？

How to add multiple language function without plugin for the Jekyll web site?
<!-- more -->

- 1.在'_data'文件夹中创建名为'(语言代码).yml'的文件

- 1.in the'_data'folder create a empty file named' (language code).yml'

- 2.在文件中以'(StringKey: StringValue)Key: Value'方式罗列出需要多语言翻译的字符串

- 2.in the file to list the need for multilingual translation of string, like "(StringKey:, StringValue) Key: Value'"

- 3.在_config.yml中输入```language_default: '(your default language)'```

- 3.in _config.yml input ```language_default: '(your default language)'```

- 4.在需要引用的文件中输入```{% raw %}{% assign translation = site.data[site.language_default] %}{% endraw %}```

- 4.enter ```{% raw %}{% assign translation = site.data[site.language_default] %}{% endraw %}``` in the file which to be referenced

- 5.```{% raw %}{{ translation.String }}{% endraw %}```即可输出'String'的翻译

- 5.```{% raw %}{{ translation.String }}{% endraw %}``` can output the translation of 'String'

>另外，如果需要翻译的字符串包含变量名或HTML标签，可以把标签或HTML内容用另外的字符串表示，在需要引用的文件中使用```{% raw %}{% capture 变量名 %} 赋予变量的内容值 {% endcapture %}{% endraw %}```导入或HTML，最后再使用```{% raw %}{{ translation.String | replace: }}{% endraw %}```即可

>In addition, if the translation string contains a jekyll(markdown) variable name or HTML tag: you can put the variable name or HTML content expressed by the addition of strings; using```{% raw %}{% capture variable name %} Give the contents or values ​​of the variable here {% endcapture %}{% endraw %}```import needs a reference file; at last use```{% raw %}{{translation.String | replace: }}{% endraw %}```
