echo "Hi, $USER!"

#compile less file
echo "compiling style.less ..."
lessc ${PWD}/theme/less/style.less ${PWD}/theme/css/style.css

#inline style in html
echo "inlining newsletter.html ..."
#doc premailer: http://rubydoc.info/gems/premailer/1.8.2/Premailer
# https://github.com/premailer/premailer/wiki/Premailer-Command-Line-Usage
# UTILISER IMPÉRATIVEMENT AVEC LE PARSER NOKOGIRI
# template= basename "$PWD"
# echo "$template"
premailer -v -e --base-url=http://newsletter-templates.expert-infos.com/templates/ ${PWD}/newsletter.html > ${PWD}/newsletter-inline.html

#Désactivation des commentaires sur les balises Posta Nova
echo "enabling PostaNova tags ..."
cp newsletter-inline.html newsletter-inline-postanova.html
perl -pi -e 's/<!--{{//g;' newsletter-inline-postanova.html
perl -pi -e 's/}}-->//g;' newsletter-inline-postanova.html

echo "That's all folks !"