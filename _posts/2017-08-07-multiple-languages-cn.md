---
layout: postcn
title: "为Jekyll网站添加多语言功能"
description: "如何为Jekyll网站无插件式的添加多语言功能？"
date: 2017-08-07 10:08:00 +0800
lang: cn
nav: post
category: personal
tags: [jekyll, multiple-languages]
---

* content
{:toc}


- 1.在'_data'文件夹中创建名为'(语言代码).yml'的文件

- 2.在文件中以'(StringKey: StringValue)Key: Value'方式罗列出需要多语言翻译的字符串，详情参考[cn.yml][1]

- 3.在_config.yml中输入```language_default: '(your default language)'```

- 4.在需要引用的文件中输入```{% raw %}{% assign translation = site.data[site.language_default] %}{% endraw %}```

- 5.```{% raw %}{{ translation.String }}{% endraw %}```即可输出'String'的翻译

>另外，如果需要翻译的字符串包含变量名或HTML标签，可以把标签或HTML内容用另外的字符串表示，在需要引用的文件中使用```{% raw %}{% capture 变量名 %} 赋予变量的内容值 {% endcapture %}{% endraw %}```导入变量或HTML，最后再使用```{% raw %}{{ translation.String | replace: }}{% endraw %}```即可

[1]: https://github.com/joytou/joytou.github.io/blob/master/_data/cn.yml

