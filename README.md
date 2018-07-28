<p><a href="https://jekyll-themes.com">
<img src="https://img.shields.io/badge/featured%20on-JT-red.svg" height="20" alt="Jekyll Themes Shield"/></a></p>
<p><a href="http://jekyllthemes.org">Jekyll Themes</a></p>
<p><a href="http://www.qingbloger.com">氢客</a></p>
<p></p>
# JOYTOU
JOYTOU(http://joytou.net) is a BootStrap blog template developed by Joytou Wu. You can create your blog by forking or copying this project. JOYTOU works fine with Git. You can use Coding、GitHub、BitBucket、GitLab as your Git repository. JOYTOU is free and you can change it to suit your theme.

# Content

| Directory | 目录 | 目錄 | 
|:----------:|:----------:|:----------:|
| [English](#user-content-en) | [简体中文](#user-content-cn)| [繁體中文](#user-content-tw) |
| [Introduction](#user-content-introduction) | [概述](#user-content-概述) | [概述](#user-content-概述tw) |
| [Features](#user-content-features) | [功能特色](#user-content-功能特色) | [功能特色](#user-content-功能特色tw)|
| [Native Server](#user-content-native-server) | [服务版本](#user-content-服务版本) | [服務版本](#user-content-服務版本) |
| [File directories](Mainfest.md) | [文件目录](Mainfest.md) | [文件目錄](Mainfest.md) |
| [Configurations](#user-content-configurations) | [配置](#user-content-配置) | [配置](#user-content-配置tw) |
| [Writting article](#user-content-writting-article) | [写文章](#user-content-写文章) | [寫文章](#user-content-寫文章) |
| [License](#user-content-license) | [许可协议](#user-content-许可协议) | [許可協議](#user-content-許可協議)|

-------

# en

## Introduction
JOYTOU(http://joytou.net) is a BootStrap blog template developed by Joytou Wu. You can create your blog by forking or copying this project. JOYTOU works fine with Git. You can use Coding、GitHub、BitBucket、GitLab as your Git repository. JOYTOU is free and you can change it to suit your theme. But no matter what, you must keep the copyright.

## Features
1. BootStrap style
2. Blog basic functions
3. Top navigation bar
4. Automatically generate Sitemap.xml
5. View the article by date, category, tag, etc.
6. The important articles can be placed at the top
7. Article sharing
8. Multi-language
9. Article comment
10. Global search
11. JQuery responsive design

## Native Server
Clone from coding.net:

- Clone with SSH:
```
git clone git@git.coding.net:joytou/JOYTOU.git
```

- Clone with HTTPS:
```
git clone https://git.coding.net/joytou/JOYTOU.git
```

## Configurations
in _config.yml:

| Key | Value | Annotation |
|:----------:|:----------:|:----------|
|      email      |      1540294142@qq.com      |       Your e-mail address     |
|      author      |      Joytou Wu      |      The article author's name      |
|       url     |     http://joytou.net       |      Your site address, and do not add  `/`  in the end      |
|      git_username      |      joytou      |       Your git account name     |
|      repo      |      JOYTOU      |      Your repository name     |
|      owner_name      |      joytou      |      The site owner name      |
|     description       |      ---      |     Your site description       |
|      keywords      |      ---      |      Your site keywords, and it must listted as array      |
> Please refer to the official website for other variables.

in each /_data/(languages code).yml:

| Key | Value | Annotation |
|:----------:|:----------:|:----------|
| sitename | JOYTOU | Your site name |
| sitesubname | An amateur programmer who loves to sit around and refuse to rest! | Your site subname |
| sitedescription | This blog template build by builder from style | Your site descriphtion(please keeping the string: 'builder', 'style') |
| siteabout | JOYTOU was done by me (Joytou). If you like this template, you can subsidize me a little. | Writting something about your site or yourself(yourselves) |

## Writting article
post format:
```
--- 
layout: post 

title:  test       
#article title 

description: Summary Content
#Summary content. 

date:   2015-04-05 08:00:00 +0800     
#publish date 

nav: post     

stickie: true         
#Make the article stick to the top if true 

category: official         
#the category for the article 

tags: [log, bootstrap, joytou]     
#the tags for the article, it should be a array 
--- 
* content 
{:toc} 

Article mainly content
#Writting the article here. 
```


## License
By using the Service, you [agree to comply with all the terms of this Agreement](https://github.com/joytou/joytou.github.io/raw/master/LICENSE).
 
-------

# cn

## 概述
JOYTOU(http://joytou.net) 是一款由Joytou Wu基于Bootstrap开发的博客模板。您可以通过fork或者复制本项目进行创建您的博客。JOYTOU集成了Git代码版本控制，用户可以选择 Coding、GitHub、BitBucket、GitLab 等任意的代码仓库。JOYTOU是免费的，您可以更改以适应您的主题。但不管如何您务必保留相关版权。

## 功能特色
1. BootStrap样式
2. 博客基本功能
3. 顶部导航栏
4. 自动Sitemap.xml
5. 通过日期、类别、标签等分类文章
6. 重要文章可置顶
7. 文章分享
8. 多语言
9. 文章评论
10. 全局搜索
11. JQuery响应式设计

## 服务版本
从Coding克隆项目：

- 用SSH克隆：
```
git clone git@git.coding.net:joytou/JOYTOU.git
```

- 用HTTPS克隆：
```
git clone https://git.coding.net/joytou/JOYTOU.git
```

## 配置
_config.yml:

| 键 | 值 | 备注 |
|:----------:|:----------:|:----------|
|      email      |      1540294142@qq.com      |       您的电子邮件地址     |
|      author      |      Joytou Wu      |      文章作者名称      |
|       url     |     http://joytou.net       |      您的网址，末尾不能加上 `/`       |
|      git_username      |      joytou      |       您的Git用户名     |
|      repo      |      JOYTOU      |      您的repository名字     |
|      owner_name      |      joytou      |      网站所有者名字      |
|     description       |      ---      |     网站的描述       |
|      keywords      |      ---      |      网站的关键词，必须以数组形式列出      |
> 其它变量请参考官网的介绍。

各个 /_data/(语言代码).yml 文件:

| 键 | 值 | 备注 |
|:----------:|:----------:|:----------|
| sitename | JOYTOU | 您的网站名称 |
| sitesubname | 一个热爱折腾、不肯休息的业余程序员！ | 您的网站副名称 |
| sitedescription | 此博客模板由builder通过style创建 | 您的网站描述(请保留字符串：'builder'、'style') |
| siteabout | JOYTOU是由我(Joytou)单独完成的。如果您喜欢此模板，可以对此模板小额资助。 | 一些关于您的网站或者您(们)的信息 |

## 写文章
文章格式：
```
--- 
layout: post 

title:  test       
#文章标题 

description: Summary Content
#摘要内容 

date:   2015-04-05 08:00:00 +0800     
#发布日期 

nav: post     

stickie: true         
#如果为true则文章置顶 

category: official         
#文章的分类 

tags: [log, bootstrap, joytou]     
#文章的标签，必须是数组 
--- 
* content 
{:toc} 

Article mainly content
#在这儿写文章
```

## 许可协议
一旦您使用本服务，即表示[您同意遵循本协议的所有约定](https://github.com/joytou/joytou.github.io/raw/master/LICENSE)。

-------

# tw 

## 概述tw 
JOYTOU(http://joytou.net) 是一款由Joytou Wu基於Bootstrap開發的博客模板。您可以通過fork或者復製本項目進行創建您的博客。 JOYTOU集成了Git代碼版本控制，用戶可以選擇 Coding、GitHub、BitBucket、GitLab 等任意的代碼倉庫。 JOYTOU是免費的，您可以更改以適應您的主題。但不管如何您務必保留相關版權。 

## 功能特色tw 
1. BootStrap樣式 
2. 博客基本功能 
3. 頂部導航欄 
4. 自動Sitemap.xml 
5. 通過日期、類別、標籤等分類文章 
6. 重要文章可置頂 
7. 文章分享 
8. 多語言 
9. 文章評論 
10. 全局搜索 
11. JQuery響應式設計 

## 服務版本 
從Coding克隆項目： 

- 用SSH克隆： 
``` git clone git@git.coding.net:joytou/JOYTOU.git ``` 

- 用HTTPS克隆： 
``` git clone https://git.coding.net/joytou/JOYTOU.git ``` 

## 配置tw 
_config.yml: 

| 鍵 | 值 | 備註 | 
|:----------:|:----------:|:----------| 
| email | 1540294142@qq.com | 您的電子郵件地址 | 
| author | Joytou Wu | 文章作者名稱 | 
| url | http://joytou.net | 您的網址，末尾不能加上 `/` | 
| git_username | joytou | 您的Git用戶名 | 
| repo | JOYTOU | 您的repository名字 | 
| owner_name | joytou | 網站所有者名字 | 
| description | --- | 網站的描述 | 
| keywords | --- | 網站的關鍵詞，必須以數組形式列出 | 
> 其它變量請參考官網的介紹。 

各個 /_data/(語言代碼).yml 文件:

| 鍵 | 值 | 備註 |
|:----------:|:----------:|:----------|
| sitename | JOYTOU | 您的網站名稱 |
| sitesubname | 一個熱愛折騰、不肯休息的業餘程序員！ | 您的網站副名稱 |
| sitedescription | 此博客模板由builder通過style創建 | 您的網站描述(請保留字符串：'builder'、'style') |
| siteabout | JOYTOU是由我(Joytou)單獨完成的。如果您喜歡此模板，可以對此模板小額資助。 | 一些關於您的網站或者您(們)的信息 |
## 寫文章
post format:
```
--- 
layout: post 

title:  test       
#文章標題

description: Summary Content
#摘要內容

date:   2015-04-05 08:00:00 +0800     
#發佈日期

nav: post     

stickie: true         
#如果為true則文章置頂

category: official         
#文章的分類

tags: [log, bootstrap, joytou]     
#文章的標籤，必須是數組
--- 
* content 
{:toc} 

Article mainly content
#在這兒寫文章
```

## 許可協議 
一旦您使用本服務，即表示[您同意遵循本協議的所有約定](https://github.com/joytou/joytou.github.io/raw/master/LICENSE)。
