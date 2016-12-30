echo "Hi, $USER!"

#compress gif files
#https://www.lcdf.org/gifsicle/
#http://graphicdesign.stackexchange.com/questions/20908/how-to-remove-every-second-frame-from-an-animated-gif
#Pour réduire nbre images : `seq -f "#%g" 0 2 199`
echo "compressing gif files ..."
gifsicle -v -O3 --lossy=200 --colors=192 ${PWD}/_sources/anim_aeroport.gif    -o ${PWD}/theme/images/nlcv_aeroport.gif
gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_ambiance.gif    -o ${PWD}/theme/images/nlcv_ambiance.gif
gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_ambiance_en.gif -o ${PWD}/theme/images/nlcv_ambiance_EN.gif
gifsicle -v -O3 --lossy=20  --colors=224 ${PWD}/_sources/anim_cadeau.gif      -o ${PWD}/theme/images/nlcv_cadeau.gif
gifsicle -v -O3 --lossy=800 --colors=96  ${PWD}/_sources/anim_nature.gif      -o ${PWD}/theme/images/nlcv_nature.gif
gifsicle -v -O3 --lossy=200 --colors=192 ${PWD}/_sources/anim_projet.gif      -o ${PWD}/theme/images/nlcv_projet.gif
gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_sommet.gif      -o ${PWD}/theme/images/nlcv_sommet.gif

echo "compressing gif files for sites ..."
gifsicle -v -O3 --lossy=50  --colors=192 ${PWD}/_sources/anim_aeroport_site.gif    -o ${PWD}/theme/images/stcv_aeroport.gif
gifsicle -v -O3 --lossy=200 --colors=128 ${PWD}/_sources/anim_ambiance_site.gif    -o ${PWD}/theme/images/stcv_ambiance.gif
gifsicle -v -O3 --lossy=200 --colors=128 ${PWD}/_sources/anim_ambiance_en_site.gif -o ${PWD}/theme/images/stcv_ambiance_EN.gif
gifsicle -v -O3 --lossy=20  --colors=224 ${PWD}/_sources/anim_cadeau_site.gif      -o ${PWD}/theme/images/stcv_cadeau.gif
gifsicle -v -O3 --lossy=200 --colors=96  ${PWD}/_sources/anim_nature_site.gif      -o ${PWD}/theme/images/stcv_nature.gif
gifsicle -v -O3 --lossy=50  --colors=192 ${PWD}/_sources/anim_projet_site.gif      -o ${PWD}/theme/images/stcv_projet.gif
gifsicle -v -O3 --lossy=200 --colors=128 ${PWD}/_sources/anim_sommet_site.gif      -o ${PWD}/theme/images/stcv_sommet.gif

# Anciennes commandes de compression, pour référence si besoin futur
# gifsicle -v -O3 --lossy=800 --colors=128 ${PWD}/_sources/anim_mer_IM004706.gif -o ${PWD}/theme/images/nlcv_mer_IM004706.gif
# gifsicle -v -O3 --lossy=200 --colors=128 ${PWD}/_sources/anim_mer_site_IM004706.gif -o ${PWD}/theme/images/stcv_mer_IM004706.gif

echo "That's all folks !"