<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>Design File Upload/Download</title>
	    
	    <link rel="stylesheet" href="resource/css/main.css" />
	    <script type="text/javascript" src="resource/js/jquery-3.2.1.min.js"></script>
	    <script type="text/javascript" src="resource/js/fileupload.js"></script>
		<link href="../../css/bootstrap.min.css" rel="stylesheet">

		<!-- MetisMenu CSS -->
		<link href="../../css/metisMenu.min.css" rel="stylesheet">

		<!-- Timeline CSS -->
		<link href="../../css/timeline.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="../../css/startmin.css" rel="stylesheet">

		<!-- Morris Charts CSS -->
		<link href="../../css/morris.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
			.box{

				color: #fff;

				padding: 20px;

				display: none;

				margin-top: 20px;

			}
			.red{ background: #ff0000; }
		</style>
		<script>

			$(document).ready(function(){

				$('input[type="radio"]').click(function(){

					var inputValue = $(this).attr("value");

					var targetBox = $("." + inputValue);

					$(".box").not(targetBox).hide();

					$(targetBox).show();

				});

			});
		</script>
	</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top"  role="navigation" style="background-color:#008B8B; border-color:#008B8B ;">
	<div class="navbar-header">
		<a class="navbar-brand" href="index.html">
			<div style="color:white; font-size:30px">CD Services</b></div>
		</a>
	</div>

	    <div class="panel">
	        <h2>Upload Your Design</h2>
			<br>
	        <h5>Press 'CTRL' Key+Click On File To Select Multiple Files in Open Dialog</h5>
			<br>
	        <form id="fileUploadForm" method="post" action="fileUploadServlet" enctype="multipart/form-data">
	            <div class="form_group">
	                <label>Upload File</label><span id="colon">: </span><input id="fileAttachment" type="file" name="fileUpload" multiple="multiple" />
	                <span id="fileUploadErr">Please Upload A File!</span>
	            </div>
	            <button id="uploadBtn" style="background-color:#149792" type="submit" class="btn btn_primary">Upload</button>
	        </form>
	    </div>
	    
	    <!-- List All Uploaded Files -->
	    <div class="panel">
	        <a id="allFiles" class="hyperLink" href="<%=request.getContextPath()%>/uploadedFilesServlet">List all uploaded files</a>
			<a id="view" class="hyperLink" href="viewsize.jsp">  | View Standard Orders! </a>
			<a id="view" class="hyperLink" href="viewcustomsize.jsp">  | View Custom Orders! </a>
	       </div>
	</nav>


<script src="../../js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../../js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../../js/raphael.min.js"></script>
<script src="../../js/morris.min.js"></script>
<script src="../../js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../../js/startmin.js"></script>
</body>
</html>