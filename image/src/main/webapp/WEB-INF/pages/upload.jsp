<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/27
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jQuery图片裁剪插件DEMO演示</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/others/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/others/css/default.css">
    <link href="${pageContext.request.contextPath}/styles/others/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/styles/others/dist/cropper.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/styles/others/css/main.css" rel="stylesheet">
    <!--[if IE]>
    <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<input type="button" id="next2" value="next"/>

<form enctype="multipart/form-data"
      action="success" method="post">


    <div class="htmleaf-container" id="step2">
        <!-- Content -->
        <div class="container">
            <div class="row">
                <!--图片-->
                <div class="col-md-9">
                    <!-- <h3 class="page-header">Demo:</h3> -->
                    <div class="img-container">
                        <img src="${pageContext.request.contextPath}/styles/others/assets/img/picture-2.jpg"
                             alt="Picture" id="img1">

                        <%--<img src=""--%>
                             <%--alt="Picture" id="img1">--%>
                    </div>
                    <div class="img-container">
                        <input type="file" id="file1" name="file1"/>

                        <div id="aaa" style="width: 640px;height: 900px"></div>
                    </div>
                </div>

                <div class="col-md-3">

                    <!-- <h3 class="page-header">Data:</h3> -->
                    <div class="docs-data">
                        <div class="input-group">
                            <label class="input-group-addon" for="dataX">X</label>
                            <input class="form-control" name="dataX" id="dataX" type="text" placeholder="x"/>
                            <span class="input-group-addon">px</span>
                        </div>
                        <div class="input-group" id="y">
                            <label class="input-group-addon" for="dataY">Y</label>
                            <input class="form-control" name="dataY" id="dataY" type="text" placeholder="y">
                            <span class="input-group-addon">px</span>
                        </div>
                        <div class="input-group" id="width">
                            <label class="input-group-addon" for="dataWidth">Width</label>
                            <input class="form-control" name="dataWidth" id="dataWidth" type="text" placeholder="width">
                            <span class="input-group-addon">px</span>
                        </div>
                        <div class="input-group" id="height">
                            <label class="input-group-addon" for="dataHeight">Height</label>
                            <input class="form-control" name="dataHeight" id="dataHeight" type="text" placeholder="height">
                            <span class="input-group-addon">px</span>
                        </div>
                        <div class="input-group">
                            <label class="input-group-addon" for="dataRotate">Rotate</label>
                            <input class="form-control" id="dataRotate" type="text" placeholder="rotate">
                            <span class="input-group-addon">deg</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Alert -->


        <script src="${pageContext.request.contextPath}/styles/others/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/styles/others/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/styles/others/dist/cropper.js"></script>
        <script src="${pageContext.request.contextPath}/styles/others/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/styles/myjs/myjs.js"></script>
    </div>

    <div id="step3" style="display: none">
        <input type="submit"/>

        <p>
            <label>请选择您的二维码：</label>
            <input type="file" name="file2" id="file2"/> 选择图片的input按钮
        </p>

        <div id="rrr" style="width: 640px;height: 900px"></div>


    </div>


</form>
</body>
</html>
