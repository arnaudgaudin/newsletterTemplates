echo "Hi, $USER!"

#compile less file
lessc ${PWD}/theme/less/style.less ${PWD}/theme/css/style.css

#inline style in html
premailer ${PWD}/newsletter.html > ${PWD}/newsletter_inline.html