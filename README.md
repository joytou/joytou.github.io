# JOYTOU

#I'm sorry, my English is not very good. If there is a mistake in the document, please understand.

*JOYTOU is a blog template built from Bootstrap by Joytou. You can choose to [preview the theme](https://joytou.github.io/) first.*
*JOYTOU是一款由Joytou通过Bootstrap制作的博客模板。您可以先选择[预览主题](https://joytou.github.io/)。*

================

##Usage
##使用

1.Download the template from [git](https://joytou.github.io)
1.从[git](https://joytou.github.io)下载模板资源
2.Change the '_config.yml' to your setting:
2.修改'_config.yml'中的如下配置:
```yml:
name: #To your site's name #您的网站名字
email: #To your e-mail #您的电子邮箱
author: #To your name #您的名字
url: #To your site's url #您的网址
baseurl: #To your url.If the template resources are in the root,change it white."" #您的博客网址。如果是在根目录的话，请保持空白""，否则像js、css资源将无法使用
description: #To your site's description. #您的网站描述
permalink: #The article url style. #您的文章网址样式。 Like: /:year/:month/:day/:title/
paginate: #The number of article per page. #每页显示的文章数量。 Like(int number): 8 or 10
```
3.Write article
3.写文章
 create a empty file in '_posts' and name it like 'year-month-date-title.md',and then write like this:
  在'_posts'文件夹创建空白文件，并以下面格式命名：'year-month-date-title.md' (注：title为英文格式，不能为中文)，按以下要求写文章：
  
```bash
---
layout: post
title:  #article title #文章标题
date:   #publish date #发布日期, like: 2015-04-05 08:00:00 +0800
---

* content
{:toc}


Writting the article here.在这儿写文章
```
 and so on.