# Attention
Because of the server,JOYTOU(http://joytou.net.cn) has moved from "github" to "Coding pages", and no longer support updates. But it still can be used as a template. Hope you can understand, thank you!
# JOYTOU
JOYTOU(http://joytou.net.cn) is a BootStrap blog template developed by Joytou Wu. You can create your blog by forking or copying this project. JOYTOU works fine with Git. You can use Coding、GitHub、BitBucket、GitLab as your Git repository. JOYTOU is free and you can change it to suit your theme.

# Content

| Directory | 目录 | 目錄 | 
|:----------:|:----------:|:----------:|
| [English](#en) | [简体中文](#cn)| [繁體中文](#tw) |
| [Introduction](#introduction) | [概述](#概述) | [概述](#概述) |
| [Features](#features) | [功能特色](#功能特色) | [功能特色](#功能特色)|
| [Native Server](#native-server) | [服务版本](#服务版本) | [服務版本](#服務版本) |
| [File directories](Mainfest.md) | [文件目录](Mainfest.md) | [文件目錄](Mainfest.md) |
| [Configurations](#configurations) | [配置](#配置) | [配置](#配置) |
| [Writting article](#writting-article) | [写文章](#写文章) | [寫文章](#寫文章) |
| [License](#license) | [许可协议](#许可协议) | [許可協議](#許可協議)|

-------

# en

## Introduction
JOYTOU(http://joytou.nets.hk) is a BootStrap blog template developed by Joytou Wu. You can create your blog by forking or copying this project. JOYTOU works fine with Git. You can use Coding、GitHub、BitBucket、GitLab as your Git repository. JOYTOU is free and you can change it to suit your theme. But no matter what, you must keep the copyright.

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
Clone from github.com:

- Clone with SSH:
```
git clone git@github.com:joytou/joytou.github.io.git
```

- Clone with HTTPS:
```
git clone https://github.com/joytou/joytou.github.io.git
```

## Configurations
in _config.yml:

| Key | Value | Annotation |
|:----------:|:----------:|:----------|
|      email      |      1540294142@qq.com      |       Your e-mail address     |
|      author      |      Joytou Wu      |      The article author's name      |
|       url     |     http://joytou.nets.hk       |      Your site address, and do not add  `/`  in the end      |
|     github       |      https://github.com/joytou/      |      Your github account address      |
|      github_username      |      joytou      |       Your github account name     |
|      repo      |      joytou.github.io      |      Your repository name     |
|      owner_name      |      joytou      |      The site owner name      |
|     description       |      ---      |     Your site description       |
|      keywords      |      ---      |      Your site keywords, and it must listted as array      |
|       remind     |      BOOL      |       Whether to remind you to upgrade the latest version when there is the latest version.     |
|      BaiduSiteVerification      |      ---      |      The string of Baidu Site Verification. If you didn't have, left it blank.      |
|      51la      |      ---      |      The String of 51.la statistic's id. If you didn't have, left it blank.       |
|       51lamb     |      ---      |      The style of 51.la statistic's data reference.       |
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

Summary Content
#Summary content. 

<!-- more --> 

Article mainly content
#Writting the article here. 
```


## License
By using the Service, you [agree to comply with all the terms of this Agreement](https://github.com/joytou/joytou.github.io/raw/master/LICENSE).
 
-------

# cn

## 概述
JOYTOU(http://joytou.nets.hk) 是一款由Joytou Wu基于Bootstrap开发的博客模板。您可以通过fork或者复制本项目进行创建您的博客。JOYTOU集成了Git代码版本控制，用户可以选择 Coding、GitHub、BitBucket、GitLab 等任意的代码仓库。JOYTOU是免费的，您可以更改以适应您的主题。但不管如何您务必保留相关版权。

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
从Github克隆项目：

- 用SSH克隆：
```
git clone git@github.com:joytou/joytou.github.io.git
```

- 用HTTPS克隆：
```
git clone https://github.com/joytou/joytou.github.io.git
```

## 配置
_config.yml:

| 键 | 值 | 备注 |
|:----------:|:----------:|:----------|
|      email      |      1540294142@qq.com      |       您的电子邮件地址     |
|      author      |      Joytou Wu      |      文章作者名称      |
|       url     |     http://joytou.nets.hk       |      您的网址，末尾不能加上 `/`       |
|     github       |      https://github.com/joytou/      |      您的Github用户地址      |
|      github_username      |      joytou      |       您的Github用户名     |
|      repo      |      joytou.github.io      |      您的repository名字     |
|      owner_name      |      joytou      |      网站所有者名字      |
|     description       |      ---      |     网站的描述       |
|      keywords      |      ---      |      网站的关键词，必须以数组形式列出      |
|       remind     |      BOOL      |       是否提醒可升级新版本     |
|      BaiduSiteVerification      |      ---      |      百度网站的验证码。如果没有，请留空白      |
|      51la      |      ---      |      51.la网站的统计id。如果没有，请留空白       |
|       51lamb     |      ---      |      51.la数据引用的样式       |
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

Summary Content
#摘要内容 

<!-- more --> 

Article mainly content
#在这儿写文章
```

## 许可协议
一旦您使用本服务，即表示[您同意遵循本协议的所有约定](https://github.com/joytou/joytou.github.io/raw/master/LICENSE)。

-------

# tw 

## 概述 
JOYTOU(http://joytou.nets.hk) 是一款由Joytou Wu基於Bootstrap開發的博客模板。您可以通過fork或者復製本項目進行創建您的博客。 JOYTOU集成了Git代碼版本控制，用戶可以選擇 Coding、GitHub、BitBucket、GitLab 等任意的代碼倉庫。 JOYTOU是免費的，您可以更改以適應您的主題。但不管如何您務必保留相關版權。 

## 功能特色 
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
從Github克隆項目： 

- 用SSH克隆： 
``` git clone git@github.com:joytou/joytou.github.io.git ``` 

- 用HTTPS克隆： 
``` git clone https://github.com/joytou/joytou.github.io.git ``` 

## 配置 
_config.yml: 

| 鍵 | 值 | 備註 | 
|:----------:|:----------:|:----------| 
| email | 1540294142@qq.com | 您的電子郵件地址 | 
| author | Joytou Wu | 文章作者名稱 | 
| url | http://joytou.nets.hk | 您的網址，末尾不能加上 `/` | 
| github | https://github.com/joytou/ | 您的Github用戶地址 | 
| github_username | joytou | 您的Github用戶名 | 
| repo | joytou.github.io | 您的repository名字 | 
| owner_name | joytou | 網站所有者名字 | 
| description | --- | 網站的描述 | 
| keywords | --- | 網站的關鍵詞，必須以數組形式列出 | 
| remind | BOOL | 是否提醒可升級新版本 | 
| BaiduSiteVerification | --- | 百度網站的驗證碼。如果沒有，請留空白 | 
| 51la | --- | 51.la網站的統計id。如果沒有，請留空白 | 
| 51lamb | --- | 51.la數據引用的樣式 | 
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

Summary Content
#摘要內容

<!-- more --> 

Article mainly content
#在這兒寫文章
```

## 許可協議 
一旦您使用本服務，即表示[您同意遵循本協議的所有約定](https://github.com/joytou/joytou.github.io/raw/master/LICENSE)。
