var language = navigator.browserLanguage?navigator.browserLanguage:navigator.language; 
if (language.indexOf('en') > -1) document.location.replace('/en/'); 
if (language.indexOf('CN') > -1) document.location.replace('/cn/'); 
if (language.indexOf('HK') > -1||language.indexOf('MO') > -1||language.indexOf('TW') > -1) document.location.replace('/tw/'); 
return false;
