echo "Hi, $USER!"

#compress PNG
#https://networklinx.com/optipng-folderdirectory-of-images.html
# optipng -o5 -strip all *.png

#compress gif files
#https://www.lcdf.org/gifsicle/
#http://graphicdesign.stackexchange.com/questions/20908/how-to-remove-every-second-frame-from-an-animated-gif
#Pour réduire nbre images : `seq -f "#%g" 0 2 199`
echo "compressing gif files ..."
# Anciennes CV2017 pour référence
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_ambiance_en.gif -o ${PWD}/theme/images/nlcv_ambiance_EN.gif
# giflossy -v -O3 --lossy=20  -k224 ${PWD}/_sources/anim_cadeau.gif      -o ${PWD}/theme/images/nlcv_cadeau.gif
# giflossy -v -O3 --lossy=800 -k96  ${PWD}/_sources/anim_nature.gif      -o ${PWD}/theme/images/nlcv_nature.gif
# giflossy -v -O3 --lossy=200 -k192 ${PWD}/_sources/anim_projet.gif      -o ${PWD}/theme/images/nlcv_projet.gif

# Nouvelles CV2018
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_aeroport.gif    -o ${PWD}/theme/images/nlcv_aeroport.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_chiffres.gif    -o ${PWD}/theme/images/nlcv_chiffres.gif
# giflossy -v -O3 --lossy=375 -k96  ${PWD}/_sources/anim_equipe.gif      -o ${PWD}/theme/images/nlcv_equipe.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_sapin.gif       -o ${PWD}/theme/images/nlcv_sapin.gif
# giflossy -v -O3 --lossy=500 -k128 ${PWD}/_sources/anim_ambiance.gif    -o ${PWD}/theme/images/nlcv_ambiance.gif
# giflossy -v -O3 --lossy=500 -k128 ${PWD}/_sources/anim_sommet.gif      -o ${PWD}/theme/images/nlcv_sommet.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_feerique.gif    `seq -f "#%g" 0 3 139` -o ${PWD}/theme/images/nlcv_feerique.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_mongolfiere.gif `seq -f "#%g" 0 2 99`  -o ${PWD}/theme/images/nlcv_mongolfiere.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_neige.gif       `seq -f "#%g" 0 3 139` -o ${PWD}/theme/images/nlcv_neige.gif
# giflossy -v -O3 --lossy=750 -k192 ${PWD}/_sources/anim_ponton.gif      `seq -f "#%g" 0 3 139` -o ${PWD}/theme/images/nlcv_ponton.gif
# giflossy -v -O3 --lossy=375 -k96  ${PWD}/_sources/anim_recette.gif     `seq -f "#%g" 0 2 79`  -o ${PWD}/theme/images/nlcv_recette.gif


echo "compressing gif files for sites ..."
# Anciennes CV2017 pour référence
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_ambiance_en_site.gif -o ${PWD}/theme/images/stcv_ambiance_EN.gif
# giflossy -v -O3 --lossy=20  -k224 ${PWD}/_sources/anim_cadeau_site.gif      -o ${PWD}/theme/images/stcv_cadeau.gif
# giflossy -v -O3 --lossy=200 -k96  ${PWD}/_sources/anim_nature_site.gif      -o ${PWD}/theme/images/stcv_nature.gif
# giflossy -v -O3 --lossy=50  -k192 ${PWD}/_sources/anim_projet_site.gif      -o ${PWD}/theme/images/stcv_projet.gif

# Nouvelles CV2018
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_aeroport_site.gif    -o ${PWD}/theme/images/stcv_aeroport.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_chiffres_site.gif    -o ${PWD}/theme/images/stcv_chiffres.gif
# giflossy -v -O3 --lossy=250 -k96  ${PWD}/_sources/anim_equipe_site.gif      -o ${PWD}/theme/images/stcv_equipe.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_sapin_site.gif       -o ${PWD}/theme/images/stcv_sapin.gif
# giflossy -v -O3 --lossy=333 -k128 ${PWD}/_sources/anim_ambiance_site.gif    -o ${PWD}/theme/images/stcv_ambiance.gif
# giflossy -v -O3 --lossy=333 -k128 ${PWD}/_sources/anim_sommet_site.gif      -o ${PWD}/theme/images/stcv_sommet.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_feerique_site.gif    `seq -f "#%g" 0 2 139` -o ${PWD}/theme/images/stcv_feerique.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_mongolfiere_site.gif `seq -f "#%g" 0 2 99`  -o ${PWD}/theme/images/stcv_mongolfiere.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_neige_site.gif       `seq -f "#%g" 0 2 139` -o ${PWD}/theme/images/stcv_neige.gif
# giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/anim_ponton_site.gif      `seq -f "#%g" 0 2 139` -o ${PWD}/theme/images/stcv_ponton.gif
# giflossy -v -O3 --lossy=250 -k96  ${PWD}/_sources/anim_recette_site.gif     `seq -f "#%g" 0 2 79`  -o ${PWD}/theme/images/stcv_recette.gif

# Nouvelles CV2019
# giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/anim_ange_site.gif              -o ${PWD}/theme/images/stcv_ange.gif
# giflossy -v -O3 --lossy=333 -k192 ${PWD}/_sources/anim_ballons_site.gif           -o ${PWD}/theme/images/stcv_ballons.gif
# giflossy -v -O3 --lossy=333 -k192 ${PWD}/_sources/anim_ballons_site_en.gif        -o ${PWD}/theme/images/stcv_ballons_en.gif
# giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/BHN_Expertise-2020-IM013545.gif -o ${PWD}/theme/images/stcv_bhn_im013545.gif
# giflossy -v -O3 --lossy=333 -k128 ${PWD}/_sources/anim_chiffres_2019_site.gif     -o ${PWD}/theme/images/stcv_chiffres.gif
# giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/anim_couleurs_site.gif          -o ${PWD}/theme/images/stcv_couleurs.gif
# giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/anim_graphique_site.gif         -o ${PWD}/theme/images/stcv_graphique.gif
# giflossy -v -O3 --lossy=333 -k128 ${PWD}/_sources/anim_lagon_site.gif             -o ${PWD}/theme/images/stcv_lagon.gif
# giflossy -v -O3 --lossy=333 -k192 ${PWD}/_sources/anim_lumiere_site.gif           -o ${PWD}/theme/images/stcv_lumiere.gif
# giflossy -v -O3 --lossy=500 -k96  ${PWD}/_sources/anim_neige_2019_site.gif        -o ${PWD}/theme/images/stcv_neige.gif
# giflossy -v -O3 --lossy=333 -k128 ${PWD}/_sources/anim_peinture_site.gif          -o ${PWD}/theme/images/stcv_peinture.gif
# giflossy -v -O3 --lossy=250 -k192 ${PWD}/_sources/anim_sapin_2019_site.gif        -o ${PWD}/theme/images/stcv_sapin.gif
# giflossy -v -O3 --lossy=333 -k192 ${PWD}/_sources/anim_sommet_2019_site.gif       -o ${PWD}/theme/images/stcv_sommet.gif
# giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/anim_vedette_site.gif           -o ${PWD}/theme/images/stcv_vedette.gif

# Nouvelles CV2020
giflossy -v -O3 --lossy=250 -k192 ${PWD}/_sources/BHN_Expertise-2020-IM013545.gif -o ${PWD}/theme/images/stcv-im013545-bhn_expertise.gif
giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/E01-Sommet-2020.gif             -o ${PWD}/theme/images/stcv-01-sommet.gif
giflossy -v -O3 --lossy=250 -k192 ${PWD}/_sources/E02-Sapin-2020.gif              -o ${PWD}/theme/images/stcv-02-sapin.gif
giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/E03-Vedette-2020.gif            -o ${PWD}/theme/images/stcv-03-vedette.gif
giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/E04-Lumiere-2020.gif            -o ${PWD}/theme/images/stcv-04-lumiere.gif
giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/E05-Mongolfiere-2020.gif        -o ${PWD}/theme/images/stcv-05-mongolfiere.gif
giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/E06-Fusee-2020.gif              -o ${PWD}/theme/images/stcv-06-fusee.gif
giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/E07-Ambiance-2020.gif           -o ${PWD}/theme/images/stcv-07-ambiance.gif
giflossy -v -O3 --lossy=125 -k192 ${PWD}/_sources/E08-Chiffres-2020.gif           -o ${PWD}/theme/images/stcv-08-chiffres.gif
giflossy -v -O3 --lossy=750 -k96  ${PWD}/_sources/E09-Ballons-Noir-2020.gif       -o ${PWD}/theme/images/stcv-09-ballons_noir.gif
giflossy -v -O3 --lossy=500 -k192 ${PWD}/_sources/E09-Ballons-Rose-2020.gif       -o ${PWD}/theme/images/stcv-09-ballons_rose.gif

# Anciennes commandes de compression, pour référence si besoin futur
# giflossy -v -O3 --lossy=800 -k128 ${PWD}/_sources/anim_mer_IM004706.gif -o ${PWD}/theme/images/nlcv_mer_IM004706.gif
# giflossy -v -O3 --lossy=200 -k128 ${PWD}/_sources/anim_mer_site_IM004706.gif -o ${PWD}/theme/images/stcv_mer_IM004706.gif

echo "That's all folks !"