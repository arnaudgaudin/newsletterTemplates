<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="robots" content="noindex">
	<title>Newsletter templates</title>
</head>
<body>
<h1>Newsletter templates</h1>
<h2>Templates gérés via GIT</h2>
<h3>Ne pas overrider via FTP !</h3>
<ul>
<?php
$templatesGit = scandir('templates');
if($templatesGit != false) {
	foreach ($templatesGit as $templateGit) {
		if(strlen($templateGit) > 2) {
			echo '<li><a href="/templates/' . $templateGit . '/newsletter.html">' . $templateGit . '</a></li>';
		}
	}
}
?>
</ul>

<h2>Templates gérés via FTP</h2>
<h3>Peuvent être overridés via FTP.</h3>

<h4>Templates ExpertCom</h4>
<ul>
<?php
$templatesFtp = scandir('ExpertCom');
if($templatesFtp != false) {
	foreach ($templatesFtp as $templateFtp) {
		if(strlen($templateFtp) > 2) {
			echo '<li><a href="/ExpertCom/' . $templateFtp . '/newsletter.html">' . $templateFtp . '</a></li>';
		}
	}
}
?>
</ul>

<h4>Templates Publishing</h4>
<ul>
<?php
$templatesFtp = scandir('Publishing');
if($templatesFtp != false) {
	foreach ($templatesFtp as $templateFtp) {
		if(strlen($templateFtp) > 2) {
			echo '<li><a href="/Publishing/' . $templateFtp . '/newsletter.html">' . $templateFtp . '</a></li>';
		}
	}
}
?>
</ul>
</body>
</html>