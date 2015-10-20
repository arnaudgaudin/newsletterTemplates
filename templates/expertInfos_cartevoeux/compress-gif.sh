echo "Hi, $USER!"

#compress gif files
#https://www.lcdf.org/gifsicle/
#http://graphicdesign.stackexchange.com/questions/20908/how-to-remove-every-second-frame-from-an-animated-gif
#Pour réduire nbre images : `seq -f "#%g" 0 2 199`
echo "compressing gif files ..."
gifsicle -v -O3 --lossy=100 --colors=128 ${PWD}/_sources/anim_cadeau.gif   -o ${PWD}/theme/images/nlcv_cadeau.gif
gifsicle -v -O3 --lossy=800 --colors=96  ${PWD}/_sources/anim_nature.gif   -o ${PWD}/theme/images/nlcv_nature.gif
gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_ambiance.gif -o ${PWD}/theme/images/nlcv_ambiance.gif

echo "That's all folks !"