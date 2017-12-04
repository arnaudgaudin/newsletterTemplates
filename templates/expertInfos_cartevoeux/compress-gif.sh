echo "Hi, $USER!"

#compress gif files
#https://www.lcdf.org/gifsicle/
#http://graphicdesign.stackexchange.com/questions/20908/how-to-remove-every-second-frame-from-an-animated-gif
#Pour réduire nbre images : `seq -f "#%g" 0 2 199`
echo "compressing gif files ..."
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_aeroport.gif    -o ${PWD}/theme/images/nlcv_aeroport.gif
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_ambiance.gif    -o ${PWD}/theme/images/nlcv_ambiance.gif
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_ambiance_en.gif -o ${PWD}/theme/images/nlcv_ambiance_EN.gif
# giflossy -v -O3 --lossy=20  -k224 ${PWD}/_sources/anim_cadeau.gif      -o ${PWD}/theme/images/nlcv_cadeau.gif
# giflossy -v -O3 --lossy=800 -k96  ${PWD}/_sources/anim_nature.gif      -o ${PWD}/theme/images/nlcv_nature.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_projet.gif      -o ${PWD}/theme/images/nlcv_projet.gif
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_sommet.gif      -o ${PWD}/theme/images/nlcv_sommet.gif
giflossy -v -O4 --lossy=300 -k16 -i ${PWD}/_sources/anim_feerique.gif      -o ${PWD}/theme/images/nlcv_feerique.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_mongolfiere.gif   -o ${PWD}/theme/images/nlcv_mongolfiere.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_neige.gif         -o ${PWD}/theme/images/nlcv_neige.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_ponton.gif        -o ${PWD}/theme/images/nlcv_ponton.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_recette.gif       -o ${PWD}/theme/images/nlcv_recette.gif


echo "compressing gif files for sites ..."
# giflossy -v -O3 --lossy=50  -k192 ${PWD}/_sources/anim_aeroport_site.gif    -o ${PWD}/theme/images/stcv_aeroport.gif
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_ambiance_site.gif    -o ${PWD}/theme/images/stcv_ambiance.gif
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_ambiance_en_site.gif -o ${PWD}/theme/images/stcv_ambiance_EN.gif
# giflossy -v -O3 --lossy=20  -k224 ${PWD}/_sources/anim_cadeau_site.gif      -o ${PWD}/theme/images/stcv_cadeau.gif
# giflossy -v -O3 --lossy=200 -k96  ${PWD}/_sources/anim_nature_site.gif      -o ${PWD}/theme/images/stcv_nature.gif
# giflossy -v -O3 --lossy=50  -k192 ${PWD}/_sources/anim_projet_site.gif      -o ${PWD}/theme/images/stcv_projet.gif
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_sommet_site.gif      -o ${PWD}/theme/images/stcv_sommet.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_feerique_site.gif      -o ${PWD}/theme/images/stcv_feerique.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_mongolfiere_site.gif   -o ${PWD}/theme/images/stcv_mongolfiere.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_neige_site.gif         -o ${PWD}/theme/images/stcv_neige.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_ponton_site.gif        -o ${PWD}/theme/images/stcv_ponton.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_recette_site.gif       -o ${PWD}/theme/images/stcv_recette.gif


# Anciennes commandes de compression, pour référence si besoin futur
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_mer_IM004706.gif -o ${PWD}/theme/images/nlcv_mer_IM004706.gif
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_mer_site_IM004706.gif -o ${PWD}/theme/images/stcv_mer_IM004706.gif

echo "That's all folks !"