    $(function () {
        $('#myTab a[href="'+location.pathname.replace("index.html","")+window.location.hash+'"]').tab('show');
    });