export CUSTOM_BARRIO=innonews_custom_barrio # change this to your custom theme_name
cp -r ../contrib/bootstrap_barrio/subtheme $CUSTOM_BARRIO
cd $CUSTOM_BARRIO
for file in *bootstrap_barrio_subtheme.*; do mv $file ${file//bootstrap_barrio_subtheme/$CUSTOM_BARRIO}; done
for file in config/*/*bootstrap_barrio_subtheme.*; do mv $file ${file//bootstrap_barrio_subtheme/$CUSTOM_BARRIO}; done
mv {_,}$CUSTOM_BARRIO.theme
mv {_,}$CUSTOM_BARRIO.layouts.yml
grep -Rl bootstrap_barrio_subtheme .|xargs sed -i '' -e "s/bootstrap_barrio_subtheme/$CUSTOM_BARRIO/"
sed -i -e "s/Bootstrap Barrio Subtheme/$CUSTOM_BARRIO_NAME/" $CUSTOM_BARRIO.info.yml
