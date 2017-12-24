---
layout: posten
title: "Add multiple languages for Jekyll web site"
date: 2017-08-07 10:08:00 +0800
lang: en
nav: post
category: personal
tags: [jekyll, multiple-languages]
---

* content
{:toc}

How to add multiple language function without plugin for the Jekyll web site?
<!-- more -->

- 1.in the'_data'folder create a empty file named' (language code).yml'

- 2.in the file to list the need for multilingual translation of string, like "(StringKey:, StringValue) Key: Value'". For more information, please refer to [en.yml][1]

- 3.in _config.yml input ```language_default: '(your default language)'```

- 4.enter ```{% raw %}{% assign translation = site.data[site.language_default] %}{% endraw %}``` in the file which to be referenced

- 5.```{% raw %}{{ translation.String }}{% endraw %}``` can output the translation of 'String'

>In addition, if the translation string contains a jekyll(markdown) variable name or HTML tag: you can put the variable name or HTML content expressed by the addition of strings; using```{% raw %}{% capture variable name %} Give the contents or values ​​of the variable here {% endcapture %}{% endraw %}```import the variable or html; at last use```{% raw %}{{translation.String | replace: }}{% endraw %}```

[1]: https://github.com/joytou/joytou.github.io/blob/master/_data/en.yml
