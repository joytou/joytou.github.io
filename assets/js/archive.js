        var searchURL = window.location.search;
        searchURL = searchURL.substring(1, searchURL.length);
        var targetPageId = searchURL.split("&")[0].split("=")[1];
        document.write(targetPageId);
