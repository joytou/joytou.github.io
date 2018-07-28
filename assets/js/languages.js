var language = navigator.browserLanguage?navigator.browserLanguage:navigator.language; 
if (language.indexOf('en') > -1) 
window.location.replace("/en/"); 
if (language.indexOf('CN') > -1) 
window.location.replace("/cn/"); 
if (language.indexOf('HK') > -1||language.indexOf('MO') > -1||language.indexOf('TW') > -1) 
window.location.replace("/tw/"); 
