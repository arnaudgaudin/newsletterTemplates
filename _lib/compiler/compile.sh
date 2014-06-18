echo "Hi, $USER!"
echo "compiling style.less ..."
echo "inlining newsletter.html ..."

#compile less file
lessc ${PWD}/theme/less/style.less ${PWD}/theme/css/style.css

#inline style in html
../../_lib/premailer/bin/premailer ${PWD}/newsletter.html > ${PWD}/newsletter-inline.html

echo "That's all folks !"