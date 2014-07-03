<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmbededViewerSample.Default" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>



        function IFrameResize() {

            var obj = parent.document.getElementById("childFrame");
            obj.height = obj.parentElement.clientHeight;
            obj.width = obj.parentElement.clientWidth;
        }


    </script>
</head>

<body onload="IFrameResize()">

    <div class="container">
        <div class="row">
            <div class="panel">
                <div class="panel-heading">
                    <h2>Embeding a viewer into your web page</h2>
                    <p>Simplest way to add a 3D viewer into your website</p>
                </div>

                <div class="panel-body">
                    <p>If all you want is to embed a 3D viewer into your website, the simplest way is to use following code snippet. Please note that you need to generate the access token in server side with view and data API.</p>
                    <p>Limitation: It is difficult to get the viewer object and manupulate the viewer with viewer client side API. If you want to have more control of the viewer, you should consider adding viewer with viewer client API and &lt;div&gt; tag. Please refer to other viewer client samples on <a href="https://github.com/Developer-Autodesk">https://github.com/Developer-Autodesk</a> </p>
                    <pre style="font-family: Consolas; font-size: 13; color: black; background: white;">&nbsp;<span style="color:blue;">&lt;</span><span style="color:maroon;">iframe</span>&nbsp;<span style="color:red;">id</span><span style="color:blue;">=&quot;childFrame&quot;</span>&nbsp;<span style="color:red;">style</span><span style="color:blue;">=&quot;</span><span style="color:red;">height</span>&nbsp;:&nbsp;<span style="color:blue;">100%</span>;&nbsp;<span style="color:red;">height</span>&nbsp;:&nbsp;<span style="color:blue;">100%&quot;</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red;">src</span><span style="color:blue;">=&quot;https://developer.api.autodesk.com/viewingservice/v1/viewers/index.html?document=</span><span style="background: yellow;">&lt;%</span><span style="color:blue;">=</span>GetDocumentId()<span style="background: yellow;">%&gt;</span><span style="color:blue;">&amp;accessToken=</span><span style="background: yellow;">&lt;%</span><span style="color:blue;">=</span>GetToken()<span style="background: yellow;">%&gt;</span><span style="color:blue;">&quot;&gt;</span></pre>
                </div>

            </div>
        </div>


        <div id="main" class="row">
            <div style="height: 600px; width: 1170px;">

                <div class="embed-responsive-4by3">
                    <iframe id="childFrame" style="height: 100%; height: 100%"  border=0 marginWidth=0  frameSpacing=0 marginHeight=0  frameBorder=0  noResize scrolling="no"
                        src="https://developer.api.autodesk.com/viewingservice/v1/viewers/index.html?document=<%=GetDocumentId()%>&accessToken=<%=GetToken()%>">
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>


</body>
</html>
