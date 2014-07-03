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

##