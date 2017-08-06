# JOYTOU

#I'm sorry, my English is not so well. If there any mistakes in the document, please understand.

*JOYTOU is a blog template built from Bootstrap by Joytou. You can choose to [preview the theme](https://joytou.github.io/) first.*

*JOYTOU是一款由Joytou通过Bootstrap制作的博客模板。您可以先选择[预览主题](https://joytou.github.io/)。*

================

##Usage
##使用

1.Download the template from https://github.com/joytou/joytou.github.io [Demo](https://joytou.github.io)

1.从https://github.com/joytou/joytou.github.io 下载模板资源。[Demo](https://joytou.github.io)

2.Change the '_config.yml' to your setting:

2.修改'_config.yml'中的如下配置:

```yml:
# Resources settings
source:      .
layouts:     ./_layouts
timezone:    +0800
lang: zh-CN
      #set the <meta lang="">
      #设置<meta lang="">
gems: ['jekyll-paginate', 'jekyll-multiple-languages']
languages: ['cn', 'en']
           #list all of your site languages
           #列出您的网站所有的语言
language_default: 'en'
                  #your site default language
                  #您的网站的默认语言

# Site settings
email: 1540294142@qq.com 
       #your email 
       #您的电子邮件
author: Joytou Wu 
        #author name 
        #作者名称
url: https://joytou.github.io 
     #the site url 
     #网址

github: https://github.com/joytou/ 
        #your github url 
        #您的github网址
baseurl: "" 
         # application directory
         #安装目录

future: true
show_drafts: nil
lsi: true
published: false
safe: false
permalink: /:year/:month/:day/:title/ 
           #The format of the article's link
           #文章链接的格式
paginate: 2
          #The number of articles per page
          #每页的文章数量
markdown: kramdown
excerpt_separator: '<!-- more -->'

exclude: ['README.md']

github_username: joytou 
                 #your github user name 
                 #您的github用户名
owner_name: Joytou 
            #the owner name 
            #所有者名称

# Keywords
keywords: #the keywords for the meta:<meta name="keywords" content="">
          #您的网站的关键词：<meta name="keywords" content="">
          #It has to list like(per one each line): -"keyword"
          #需按照以下格式列出（每行一个）：-"关键词"
        - "github"
        - "bootstrap"
        - "blog"
        - "joytou"
        - "markdown"
        - "博客"
        - "个人博客"
        - "博客模板"
#Others
BaiduSiteVerification: "***"
                       -Your Baidu HTML Tag Verification：baidu-site-verification
                       -If not, please leave blank.
                       -您的百度HTML标签验证：baidu-site-verification
                       -如果没有，请留空白
```

3.Setting the site information

3.配置网站信息

In each '(language code).yml' file, change under information

在各个'(语言代码).yml'文件中，修改以下信息
```
name: JOYTOU 
      #Your site name 
      #您的网站名称
subname: 一个热爱折腾、不肯休息的业余程序员！
         #Your site sub name
         #您的网站子名称
description: 此博客模板由Joytou通过Bootstrap创建 
             #your site's description 
             #您的网站描述
about: JOYTOU是由我(Joytou)单独完成的。如果您喜欢此模板，可以对此模板小额资助。 
       #about your site 
       #关于您的网站
```
4.Write article

4.写文章

create a empty file in '_posts' and name it like 'year-month-date-title.md',and then write like this:

在'_posts'文件夹创建空白文件，并以下面格式命名：'year-month-date-title.md' (注：title为英文格式，不能为中文)，按以下要求写文章：
  
```bash
---
layout: post
title:  test
       #article title 
       #文章标题
date:   2015-04-05 08:00:00 +0800
      #publish date 
      #发布日期
nav: post 
     #don't change this line 
     #请不要修改这一行
stickie: true 
         #Make the article stick to the top if true 
         #如果为true则文章置顶
category: official 
          #the category for the article 
          #文章的分类
tags: [log, bootstrap, joytou]
      #the tags for the article, it should be a array 
      #文章的标签，必须是数组
---

* content
{:toc}

#Summary content.
#摘要内容
<!-- more -->
#Writting the article here.
#在这儿写文章
```
 and so on.
 
 完结。
