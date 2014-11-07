newsletterTemplates
===================

##Prérequis
###Système d'exploitation
Vous devez être sur Mac ou Linux pour pouvoir éditer ou créer de nouveaux templates.

###Bibliothèques nécessaires à la compilation
1. NODE http://nodejs.org

		#Sous linux avec apt-get :
		sudo apt-get install nodejs

		#Sous Mac avec brew
		brew install node

2. LESSC http://lesscss.org et GROUP-CSS-MEDIA-QUERIES https://github.com/Se7enSky/group-css-media-queries

		npm install -g less
		npm install -g group-css-media-queries

3. RUBYGEMS https://rubygems.org  
Pour une installation sur CENTOS avec RVM :  
https://www.digitalocean.com/community/tutorials/how-to-install-ruby-2-1-0-on-centos-6-5-using-rvm

		#Sous Mac avec brew
		brew install ruby

4. PREMAILER https://github.com/premailer/premailer

		#Installation avec gem
		gem install premailer

5. NOKOGIRI

		#Installation avec gem
		gem install nokogiri

###Installation du repository sur votre poste
Ouvrir le terminal et se déplacer dans le dossier où vous souhaiter copier la bibliothèque.  
Le repository sera bientôt hébergé sur le compte SidPresse. Pour pouvoir le modifier vous devrez le forker et pousser vos modifs sur votre propre compte GitHub, puis faire un pull-request sur SidPresse.  
L'adresse suivante est donc temporaire. Pour cloner le repository en local :

		git clone https://github.com/SidPresse/newsletterTemplates.git

##Création d'un template de base
1. Aller dans le sous-dossier "templates"
2. Dupliquer le dossier _baseTemplate et nommer le dossier du nom exacte du template à créer (en camelCase)
3. À définir : nomenclature de nommage lorsque beaucoup de templates...
4. Définir le nom du template dans la variable less du fichier "theme/import.less"

		@mainTheme: "nomTemplate";

##Création de la scruture du template avec INK
Le template que vous allez créer utilise le framework INK (http://zurb.com/ink/docs.php). Vous devrez donc éditer le fichier "newsletter.html". Ce fichier appel le fichier "style.css" . Ce dernier est compilé à partir du fichier "style.less" situé dans le sous dossier "theme/less/style.less" .  
Un fork de "inkless" est utilisé afin de pouvoir modeler INK à nos besoins.  
Attention ! Vous devrez compiler votre template pour pouvoir le tester. Voir section "Compilation du template".  
Vous aurez accès aux variables de personnalisation suivantes (ce listing va s'étoffer au fil du temps) :

		// Scaffolding
		// -------------------------
		@bodyBackground:        #ffffff;
		@textColor:             #222222;


		// Links
		// -------------------------
		@linkColor:             #2ba6cb;
		@linkColorHover:        darken(@linkColor, 10%);


		// Typography
		// -------------------------
		@sansFontFamily:        "Helvetica Neue", Helvetica, Arial, sans-serif;
		@serifFontFamily:       Georgia, "Times New Roman", Times, serif;
		@monoFontFamily:        Monaco, Menlo, Consolas, "Courier New", monospace;

		@baseFontSize:          14px;
		@baseFontFamily:        @sansFontFamily;
		@baseLineHeight:        19px;
		@altFontFamily:         @serifFontFamily;

		@headingsFontFamily:    @baseFontFamily;
		@headingsFontWeight:    bold;
		@headingsColor:         inherit;


		// Component sizing
		// -------------------------
		// Based on 14px font-size

		@buttonFontSizeLarge:   (@baseFontSize * 2);     // ~24px
		@buttonFontSizeMedium:  (@baseFontSize * 1.45);  // ~20px
		@buttonFontSizeSmall:   (@baseFontSize * 1.15);  // ~16px
		@buttonFontSizeTiny:    (@baseFontSize * 0.85);  // ~12px

		@headingsFontSizeH1:    (@baseFontSize * 2.85);  // ~40px
		@headingsFontSizeH2:    (@baseFontSize * 2.55);  // ~36px
		@headingsFontSizeH3:    (@baseFontSize * 2.25);  // ~32px
		@headingsFontSizeH4:    (@baseFontSize * 2);     // ~28px
		@headingsFontSizeH5:    (@baseFontSize * 1.75);  // ~24px
		@headingsFontSizeH6:    (@baseFontSize * 1.45);  // ~20px

		@fontSizeLarge:         (@baseFontSize * 1.25);  // ~18px
		@fontSizeSmall:         (@baseFontSize * 0.70);  // ~10px
		@fontSizeMini:          (@baseFontSize * 0.55);  // ~8px


		// Buttons
		// -------------------------
		@btnBackground:               @linkColor;
		@btnBackgroundHover:          darken(@btnBackground, 10%);
		@btnBorder:                   darken(@btnBackground, 20%);

		@btnSecondaryBackground:      #E9E9E9;
		@btnSecondaryBackgroundHover: darken(@btnSecondaryBackground, 10%);
		@btnSecondaryBorder:          darken(@btnSecondaryBackground, 10%);

		@btnSuccessBackground:      #5da423;
		@btnSuccessBackgroundHover: darken(@btnSuccessBackground, 15%);
		@btnSuccessBorder:          darken(@btnSuccessBackground, 15%);

		@btnAlertBackground:      #c60f13;
		@btnAlertBackgroundHover: darken(@btnAlertBackground, 20%);
		@btnAlertBorder:          darken(@btnAlertBackground, 20%);


		// Panels
		// -------------------------
		@panelBackground: #f2f2f2;
		@panelBorder: #d9d9d9;


		// Hr border color
		// -------------------------
		@hrBorder: #d9d9d9;


		// Grid config
		// --------------------------------------------------
		@columnWidth: 30px;
		@gutterWidth: 20px;

##Insertion des tags PostaNova
###Principes généraux
Les commentaires Posta Nova ne respectant pas les standards HTML, ils font planter PREMAILER qui ne peut pas compiler le template html. Il faut donc les insérer dans des commentaires HTML spécifiques qui seront échappés par le compilateur.

###Commentaire d'insertion des tags Posta Nova
Encadrer toute portion de code Posta Nova par les tags suivants :

		<!--{{ ... }}-->

Remplacer les balises ouvrantes <? et ?> par les tags suivants :

		##{{ ... }}##

###Insertion des liens spécifiques Posta Nova
Pour fonctionner INK a besoin d'un doctype en XHTML 1.0 Strict. Il faut donc que chaque attribut ait une valeurs, ce qui rentre en contradiction avec les liens spécifiques Posta Nova. Merci de les renseigner de la manière suivante :

####Lien de visualisation en ligne

		<!--{{<gab_lien_message_online>}}-->
		<a href="#" lien_message_online="lien_message_online">cliquez ici</a>
		<!--{{</gab_lien_message_online>}}-->

####Lien d'impression

		<!--{{<gab_lien_print>}}-->
		<a href="#" lien_print="lien_print">cliquez ici</a>
		<!--{{</gab_lien_print>}}-->

####Lien de blackliste

		<!--{{<gab_lien_blackliste>}}-->
		<a href="#" lien_blackliste="lien_blackliste">cliquez ici</a>
		<!--{{</gab_lien_blackliste>}}-->


####Lien envoyer à un ami

		<!--{{<gab_lien_mailto>}}-->
		<a href="#" lien_mailto="lien_mailto">Envoyer ce message à un ami</a>
		<!--{{</gab_lien_mailto>}}-->


###Insertion de code destiné à être supprimé lors de la compilation
Cela permet d'afficher par exemple une image de test qui serait suivie d'un code d'insertion Posta Nova pour une image. C'est très utile pour la conception du gabarit puisque ça permet de le tester en amont de Posta Nova avec du contenu rentré en dur. Il faut encadrer ce contenu par les tags suivants :

		<!--DEL{{--> ... <!--}}DEL-->

###Récupération automatique des styles d'un élément dans un attribut <param> de Posta Nova
Premailer permet d'insérer en ligne tous les styles appliqué à un élément. Il est donc possible de récupérer uniquement l'attribut style d'un élément (lien, image, etc) à destination d'un attribut param. Il faut insérer cet élément équipé de sa classe avec l'attribut data-type="getstyle". La classe étant supprimée dans le processus il faut la remettre à la fin du param. Voici des exemples concrets.


####Avec un lien
Le code suivant :

		<params>
		}}--><a data-type="getstyle"><!--getstyle--></a><!--{{
		</params>

Donnerait par exemple en sortie :

		<params>
		style="color: #ffffff; text-decoration: none"
		</params>

####Avec une image
Le code suivant :
		
		<params>
		}}--><img data-type="getstyle" class="hide-for-small" /><!--getstyle--><!--{{class="hide-for-small"
		</params>

Donnerait par exemple en sortie :

		<params>
		style="-ms-interpolation-mode: bicubic; clear: both; display: block; float: right; margin-left: 10px; max-width: 100%; outline: none; text-decoration: none; width: auto" align="right" class="hide-for-small"
		</params>

À noter que les autres attributs sont également conservés (align).

###Génération automatique d'une URL absolue.
Les gabarits sont accessibles aux adresses suivantes :

		http://newsletter-templates.expert-infos.com/templates/##NOMTEMPLATE##/newsletter.html
		http://newsletter-templates.expert-infos.com/templates/##NOMTEMPLATE##/newsletter-inline.html
		http://newsletter-templates.expert-infos.com/templates/##NOMTEMPLATE##/newsletter-inline-postanova.html

Il n'est pas nécessaire de renseigner directement l'URL en absolue, PREMAILER le fait pour vous, ce qui permet de développer votre gabarit en local.  
Le code suivant :

		<img src="./theme/images/logo.jpg" width="280" height="75" />

Donne donc en sortie (avec les styles insérés en ligne) :

		<img src="http://newsletter-templates.expert-infos.com/templates/liberaletvous/theme/images/logo.jpg" width="280" height="75" style="-ms-interpolation-mode: bicubic; clear: both; display: block; float: left; max-width: 100%; outline: none; text-decoration: none; width: auto" align="left" />

##Récupération automatique de l'URL d'un élément dans un attribut <param> de Posta Nova
De la même manière que pour getstyle, on va utiliser une syntaxe spécifique à l'aide de gethref.  
Le code suivant :

		<src>
		}}--><a data-type="gethref" href="./theme/images/actumois.jpg"><!--gethref--></a><!--{{
		</src>

Donne en sortie :

		<src>
		http://newsletter-templates.expert-infos.com/templates/liberaletvous/theme/images/actumois.jpg
		</src>

##Insertion de tags ASP
Encadrer toute portion de code ASP par les tags suivants :

		<!--{{%%{{ ... }}%%}}-->

Ce qui donnerait par exemple en sortie :

		<% ... %>

Pour les variables ASP insérées en attributs HTML insérer uniquement les tags suivants :

		<a href="%%{{=maVariable}}%%"></a>

##Compilation du template
(génération de style.css, création des versions inline et postanova)
Dans le dossier du template, lancer la commande suivante dans le terminal :

		./compile.sh

Cette commande va faire les opérations suivantes :

1. Compilation de style.less en style.css
2. Inline de tous les styles dans le corps du template (sauf styles responsives)
3. Suppression et transformation des balises d'échappement permettant de récupérer les tags PostaNova