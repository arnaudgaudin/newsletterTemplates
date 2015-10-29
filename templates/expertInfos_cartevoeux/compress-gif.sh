echo "Hi, $USER!"

#compress gif files
#https://www.lcdf.org/gifsicle/
#http://graphicdesign.stackexchange.com/questions/20908/how-to-remove-every-second-frame-from-an-animated-gif
#Pour réduire nbre images : `seq -f "#%g" 0 2 199`
echo "compressing gif files ..."
gifsicle -v -O3 --lossy=20  --colors=224 ${PWD}/_sources/anim_cadeau.gif   -o ${PWD}/theme/images/nlcv_cadeau.gif
gifsicle -v -O3 --lossy=200 --colors=192 ${PWD}/_sources/anim_projet.gif   -o ${PWD}/theme/images/nlcv_projet.gif
gifsicle -v -O3 --lossy=800 --colors=96  ${PWD}/_sources/anim_nature.gif   -o ${PWD}/theme/images/nlcv_nature.gif
gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_ambiance.gif -o ${PWD}/theme/images/nlcv_ambiance.gif

echo "compressing gif files for sites ..."
gifsicle -v -O3 --lossy=20  --colors=224 ${PWD}/_sources/anim_cadeau_site.gif   -o ${PWD}/theme/images/stcv_cadeau.gif
gifsicle -v -O3 --lossy=50 --colors=192 ${PWD}/_sources/anim_projet_site.gif    -o ${PWD}/theme/images/stcv_projet.gif
gifsicle -v -O3 --lossy=200 --colors=96  ${PWD}/_sources/anim_nature_site.gif   -o ${PWD}/theme/images/stcv_nature.gif
gifsicle -v -O3 --lossy=200 --colors=128 ${PWD}/_sources/anim_ambiance_site.gif -o ${PWD}/theme/images/stcv_ambiance.gif

echo "That's all folks !"