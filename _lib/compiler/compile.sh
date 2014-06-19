echo "Hi, $USER!"
echo "compiling style.less ..."
echo "inlining newsletter.html ..."

#compile less file
lessc ${PWD}/theme/less/style.less ${PWD}/theme/css/style.css

#appel js de compilation premailer
# sudo ${PWD}/../../_lib/compiler/premailer.rb

#inline style in html
#doc premailer: http://rubydoc.info/gems/premailer/1.8.2/Premailer
# UTILISER IMPÉRATIVEMENT AVEC LE PARSER NOKOGIRI
premailer -v ${PWD}/newsletter.html > ${PWD}/newsletter-inline.html
# /usr/local/lib/node_modules/swig-email-templates/bin/swig-email-templates.js render newsletter.html -r ${PWD} > ${PWD}/newsletter-inline2.html

echo "That's all folks !"