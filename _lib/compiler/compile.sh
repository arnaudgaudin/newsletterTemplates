echo "Hi, $USER!"

#compile less file
echo "compiling style.less ..."
lessc --group-css-media-queries ${PWD}/theme/less/style.less ${PWD}/theme/css/style.css
# group-css-media-queries ${PWD}/theme/css/style.css ${PWD}/theme/css/style.css
[ -f ${PWD}/theme/less/newsletter.less ] && lessc ${PWD}/theme/less/newsletter.less ${PWD}/theme/css/newsletter.css

#preprocess html before premailer
echo "preprocess newsletter.html ..."
cp newsletter.html newsletter-preprocess.html

#Remplacement des propriétés spécifiques pour les Newsletters
perl -pi -e 's/nlbgcolor=/bgcolor=/g;' newsletter-preprocess.html
perl -pi -e 's/nlbordercolor=/bordercolor=/g;' newsletter-preprocess.html

#inline style in html
echo "inlining newsletter.html ..."
#doc premailer: http://rubydoc.info/gems/premailer/1.8.2/Premailer
# https://github.com/premailer/premailer/wiki/Premailer-Command-Line-Usage
# UTILISER IMPÉRATIVEMENT AVEC LE PARSER NOKOGIRI
templateName=$(basename "$PWD")
domain=http://newsletter-templates.lesechos-publishing.fr
baseurl=$domain/templates/$templateName/
premailer --base-url=$baseurl --entities --verbose ${PWD}/newsletter-preprocess.html > ${PWD}/newsletter-inline.html
rm newsletter-preprocess.html

#Désactivation des commentaires sur les balises Posta Nova
echo "enabling PostaNova tags ..."
cp newsletter-inline.html newsletter-inline-postanova.html

#Suppression des échappements HTML et CSS
perl -pi -e 's/<!--{{//g;' newsletter-inline-postanova.html
perl -pi -e 's/}}-->//g;' newsletter-inline-postanova.html
perl -pi -e 's/\/\*{{//g;' newsletter-inline-postanova.html
perl -pi -e 's/}}\*\///g;' newsletter-inline-postanova.html

#Remplacement des balises d'ouverture/fermeture en ASP
perl -pi -e 's/%%{{/<%/g;' newsletter-inline-postanova.html
perl -pi -e 's/}}%%/%>/g;' newsletter-inline-postanova.html
#Même chose en ASCII pour les attributs SRC
perl -pi -e 's/%25%25%7B%7B/<%/g;' newsletter-inline-postanova.html
perl -pi -e 's/%7D%7D%25%25/%>/g;' newsletter-inline-postanova.html
#Gestion des appels de variables via Dictionary
perl -pi -e 's/##\(\(/<%=colorParsing\.Item\("/g;' newsletter-inline-postanova.html
perl -pi -e 's/\)\)##/"\)%>/g;' newsletter-inline-postanova.html
#Gestion des appels de variables via CSS
perl -pi -e 's/\*\*\(\(/<%=/g;' newsletter-inline-postanova.html
perl -pi -e 's/\)\)\*\*/%>/g;' newsletter-inline-postanova.html
#Remplacement d'espacement forcé dans une URL d'adresse (Special Gan SEP2016)
perl -pi -e 's/\$\$SP\$\$/ /g;' newsletter-inline-postanova.html

#Remplacement des balises d'ouverture/fermeture de Posta Nova
perl -pi -e 's/##{{/<?/g;' newsletter-inline-postanova.html
perl -pi -e 's/}}##/?>/g;' newsletter-inline-postanova.html

#Remplacement des attributs additionnels Premailer
perl -pi -e 's/-premailer-background/background/g;' newsletter-inline-postanova.html
perl -pi -e 's/-premailer-border/border/g;' newsletter-inline-postanova.html
perl -pi -e 's/( ?)-premailer-hidden( ?)//g;' newsletter-inline-postanova.html

#Suppression des attributs spécifiques Premailer
#Devenu obsolète avec la 1.8.7 qui les supprime directement
# perl -pi -e 's/-premailer-cellpadding(.*?); //g;' newsletter-inline-postanova.html
# perl -pi -e 's/-premailer-cellspacing(.*?); //g;' newsletter-inline-postanova.html
# perl -pi -e 's/-premailer-width(.*?); //g;' newsletter-inline-postanova.html
# perl -pi -e 's/-premailer-height(.*?); //g;' newsletter-inline-postanova.html

#Suppression doublon résultant des -premailer-background
perl -pi -e "s/background-image: url\('(.*?)-premailer-bgdebug'\);//g;" newsletter-inline-postanova.html
# Ancienne expression trop imprécise
# perl -pi -e "s/background: #(.*?)-premailer-bgdebug'\); //g;" newsletter-inline-postanova.html
perl -pi -e "s/background: #([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3}) url\((.*?)-premailer-bgdebug'\); //g;" newsletter-inline-postanova.html
perl -pi -e "s/background: transparent(.*?)-premailer-bgdebug'\); //g;" newsletter-inline-postanova.html
perl -pi -e "s/background: url\('(.*?)-premailer-bgdebug'\); //g;" newsletter-inline-postanova.html
perl -pi -e 's/background="(.*?)-premailer-bgdebug" //g;' newsletter-inline-postanova.html

#Suppression doublon résultant des -premailer-border
perl -pi -e "s/border: 999000999ex none transparent; //g;" newsletter-inline-postanova.html

#Suppression des balises de récupération des styles
perl -pi -e 's/<(.+?)data-type="getstyle" (.*?)style=/style=/g;' newsletter-inline-postanova.html
perl -pi -e 's/\/><!--getstyle-->//g;' newsletter-inline-postanova.html
perl -pi -e 's/><!--getstyle--><\/(.+?)>//g;' newsletter-inline-postanova.html

#Suppression des balises de récupération des hrefs
#Ancien sélecteur : <(.+?)
perl -pi -e 's/<a data-type="gethref" (.*?)href="//g;' newsletter-inline-postanova.html
perl -pi -e 's/" (.+?)><!--gethref--><\/(.+?)>//g;' newsletter-inline-postanova.html

#Remplacement des attributs PostaNova
perl -pi -e 's/lien_message_online="lien_message_online"/lien_message_online/g;' newsletter-inline-postanova.html
perl -pi -e 's/lien_print="lien_print"/lien_print/g;' newsletter-inline-postanova.html
perl -pi -e 's/lien_blackliste="lien_blackliste"/lien_blackliste/g;' newsletter-inline-postanova.html
perl -pi -e 's/lien_mailto="lien_mailto"/lien_mailto/g;' newsletter-inline-postanova.html

#Suppression des éléments à supprimer
perl -pi -e 's/<!--DEL\{\{-->.+?<!--\}\}DEL-->//g;' newsletter-inline-postanova.html
perl -pi -e 's/\/\*DEL\{\{\*\/.+?\/\*\}\}DEL\*\///g;' newsletter-inline-postanova.html
#test pour multiline, à débugguer
#<!--DEL\{\{-->\n(?s).+?\n<!--\}\}DEL-->

#Correction bug Premailer sur > dans les Styles
perl -pi -e 's/&gt;/>/g;' newsletter-inline.html
perl -pi -e 's/&gt;/>/g;' newsletter-inline-postanova.html

echo "That's all folks !"