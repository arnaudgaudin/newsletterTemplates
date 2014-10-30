<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Newsletter templates</title>
</head>
<body>
<h1>Newsletter templates</h1>
<ul>
<?php
$templates = scandir('templates');
if($templates != false) {
	foreach ($templates as $template) {
		if(strlen($template) > 2) {
			echo '<li><a href="/templates/' . $template . '/newsletter.html">' . $template . '</a></li>';
		}
	}
}
?>
</ul>
</body>
</html>