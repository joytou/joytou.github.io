---
layout: posttw
title: "爲Jekyll網站添加多語言功能"
description: "如何爲Jekyll網站無插件式的添加多語言功能？"
date: 2017-08-07 10:08:00 +0800
lang: tw
nav: post
category: personal
tags: [jekyll, multiple-languages]
---

* content
{:toc}


- 1.在'_data'文件夾中創建名爲'(語言代碼).yml'的文件

- 2.在文件中以'(StringKey: StringValue)Key: Value'方式羅列出需要多語言翻譯的字符串，詳情參考[tw.yml][1]

- 3.在_config.yml中輸入```language_default: '(your default language)'```

- 4.在需要引用的文件中輸入```{% raw %}{% assign translation = site.data[site.language_default] %}{% endraw %}```

- 5.```{% raw %}{{ translation.String }}{% endraw %}```即可輸出'String'的翻譯

>另外，如果需要翻譯的字符串包含變量名或HTML標簽，可以把標簽或HTML內容用另外的字符串表示，在需要引用的文件中使用```{% raw %}{% capture 變量名 %} 賦予變量的內容值 {% endcapture %}{% endraw %}```導入變量或HTML，最後再使用```{% raw %}{{ translation.String | replace: }}{% endraw %}```即可

[1]: https://github.com/joytou/joytou.github.io/blob/master/_data/tw.yml
