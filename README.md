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

2. LESSC http://lesscss.org

		npm install -g less

3. PREMAILER https://github.com/premailer/premailer

		#Installation avec gem
		gem install premailer

###Installation du repository sur votre poste
Ouvrir le terminal et se déplacer dans le dossier où vous souhaiter copier la bibliothèque.  
Le repository sera bientôt hébergé sur le compte SidPresse. Pour pouvoir le modifier vous devrez le forker et pousser vos modifs sur votre propre compte GitHub, puis faire un pull-request sur SidPresse.  
L'adresse suivante est donc temporaire. Pour cloner le repository en local :

		git clone https://github.com/arnaudgaudin/newsletterTemplates.git

##Création d'un template de base
1. Aller dans le sous-dossier "templates"
2. Dupliquer le dossier _baseTemplate et nommer le dossier du nom exacte du template à créer (en camelCase)
3. À définir : nomenclature de nommage lorsque beaucoup de templates...
4. Définir le nom du template dans la variable less du fichier "theme/import.less"

		@mainTheme: "nomTemplate";

##Création de la scruture du template avec INK
Le template que vous allez créer utilise le framework INK (http://zurb.com/ink/docs.php). Vous devrez donc éditer le fichier "newsletter.html". Ce fichier appel le fichier "style.css" . Ce dernier est compilé à partir du fichier "style.less" situé dans le sous dossier "theme/less/style.less" .  
Un fork de "inkless" est utilisé afin de pouvoir modeler INK à nos besoins. Vous aurez accès aux variables de personnalisation suivantes (ce listing va s'étoffer au fil du temps) :

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