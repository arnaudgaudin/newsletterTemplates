<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Newsletter templates</title>
</head>
<body>
<h1>Newsletter templates</h1>

<?php
$templates = scandir('templates');
print_r($templates);
?>


<ul>
	<li><a href="/templates/testIntegration/newsletter.html">Test intégration</a></li>
	<li><a href="/templates/liberaletvous/newsletter.html">Libéral et vous</a></li>
</ul>
</body>
</html>