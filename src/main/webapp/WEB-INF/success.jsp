<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    var xhr;
    function ajaxRequest() {

        if (window.ActiveXObject) {
            xhr = new ActiveXObject("Microsoft.XMLHTTP");
        } else if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        }


        xhr.open("GET", "testAjax.do", true);

        xhr.onreadystatechange = ajaxCallback;

        xhr.send();

    }

        function ajaxCallback() {

            if (xhr.status ==200 && xhr.readyState==4){
                var display = document.getElementById("display");
                display.innerHTML=xhr.responseText;
            }
    }
</script>

<button onclick="ajaxRequest()">点击执行ajax</button>
<div id="display">hello world</div>
</body>
</html>
