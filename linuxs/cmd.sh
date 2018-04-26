ubuntu:
sed -i "s/原字符串/新字符串/g" `grep 原字符串 -rl 所在目录`
sed -i "s/董事长致辞/高层致辞/g" `grep 董事长致辞 -rl ./app/views/`
$ sed -i "s/src=\"html/src=\"\/assets_doc\/front\/html/g" `grep 'src="html' -rl public/userscenter`
$ sed -i  "s/href=\"html/href=\"\/assets_doc\/front\/html/g" `grep '..' -rl public/userscenter`

mac:
$ sed -i '' "s//g" `grep 'href="html' -rl app/`
git grep '"front/hioki' | grep html.erb
## emacs
$ sed -i '' "s/user_type/role/g" `grep user_type -rl app/controllers/`
$ sed -i '' "s/el-dialog\(.*\)v-model/el-dialog\1:visible.sync/g" `grep '<el-dialog' -rl app/javascript/packs/components/`

<------------------ start ------------>
git grep -n health_data 
$ sed -i '' "s/health_data/health_check_data/g" `grep health_data -rl app/`
$ sed -i '' "s/health_data/health_check_data/g" `grep health_data -rl .rubocop_todo.yml`
$ sed -i '' "s/health_data/health_check_data/g" `grep health_data -rl config/routes.rb`
$ sed -i '' "s/health_data/health_check_data/g" `grep health_data -rl spec/`
find  ./ -name "*ealth_data*"
HealthData
$ sed -i '' "s/HealthData/HealthCheckData//g" `grep HealthData -rl app/`
mv .//app/controllers/api/health_data_controller.rb .//app/controllers/api/health_check_data_controller.rb
mv .//app/controllers/api/manager/health_data_controller.rb .//app/controllers/api/manager/health_check_data_controller.rb
mv .//app/javascript/packs/components/manager/health_data .//app/javascript/packs/components/manager/health_check_data
mv .//db/fixtures/development/04_health_data.rb .//db/fixtures/development/04_health_check_data.rb
mv .//db/fixtures/staging/04_health_data.rb .//db/fixtures/staging/04_health_check_data.rb

git grep -n HealthDatum
$ sed -i '' "s/HealthDatum/HealthCheckDatum/g" `grep HealthDatum -rl app/`
$ sed -i '' "s/HealthDatum/HealthCheckDatum/g" `grep HealthDatum -rl spec/`
$ sed -i '' "s/health_datum/health_check_datum/g" `grep health_datum -rl app/`
$ sed -i '' "s/health_datum/health_check_datum/g" `grep health_datum -rl spec/`
$ sed -i '' "s/health_datum/health_check_datum/g" `grep health_datum -rl .rubocop.yml`
$ sed -i '' "s/HealthDatum/HealthCheckDatum/g" `grep HealthDatum -rl spec/`
find  ./ -name "*health_datum*"

mv .//app/javascript/packs/resources/health_datum.js .//app/javascript/packs/resources/health_check_datum.js
mv .//app/javascript/packs/resources/manager/health_datum.js .//app/javascript/packs/resources/manager/health_check_datum.js
mv .//app/models/health_datum.rb .//app/models/health_check_datum.rb
mv .//spec/models/health_datum_spec.rb .//spec/models/health_check_datum_spec.rb
mv .//app/serializers/health_datum_serializer.rb .//app/serializers/health_check_datum_serializer.rb
mv .//spec/factories/health_datum.rb .//spec/factories/health_check_datum.rb
<------------------ end ------------>

$ sed -i '' "s/show-input>/show-input :debounce=\"2000\">/g" `grep 'show-input>' -rl app/javascript/packs/components/simulation/`

sed -i '' "s/\/assets_doc\/front\/images\//\/assets_doc\/front\/html\/images\//g" `grep 'assets_doc' -rl app/`

$ sed -i '' "s/src=\"\.\/html/src=\"\/assets_doc\/front\/html/g" `grep 'src=".html' -rl app/`

$ sed -i '' "s/src=\"html/src=\"\/assets_doc\/front\/html/g" `grep 'src="html' -rl app/`

$ sed -i "s/src=\"html/src=\"\/assets_doc\/front\/html/g" `grep 'src="html' -rl app/`

$ sed -i '' "s/href=\"\.\.\/css/href=\"\/assets_doc\/front\/html\/css/g" `grep '..' -rl public/assets_doc/about/`

$ sed -i '' "s/href=\"html/href=\"\/assets_doc\/front\/html/g" `grep '..' -rl public/assets_doc/about/`
$ sed -i '' "s/href=\"\.\./href=\"\/assets_doc\/front\/html/g" `grep '..' -rl public/assets_doc/about/`
$ sed -i '' "s/src=\"\.\.\/html/src=\"\/assets_doc\/front\/html/g" `grep '..' -rl public/assets_doc/about/`

href="about/ href="assets_doc/about/
sed -i '' "s/href=\"about\//href=\"assets_doc\/about\//g" `grep 'href="about/' -rl app/`

src="../html
$ sed -i '' "s/\.\.\//\/assets_doc\/front\/html\//g" `grep '\.\.\/' -rl public/assets_doc/front/html/`
$ sed -i '' "s/\.\.\//\/assets_doc\/front\/html\//g" `grep '\.\.\/' -rl public/assets_doc/front/html2/`

sed -i '' "s/mobile\//front\//g" `grep 'mobile/' -rl app/`
# /Users/wenbo/workspace/github/handyScripts/linuxs/cmd.sh
sed -i '' 's/\.\.\/images\/hioki_sidebar_jt\.png/<%= asset_path "mobile\/hioki_sidebar_jt.png" %>/g' `grep max-width -rl ./app/assets/`

sed -i '' 's/\.\.\/images\/hioki_nav_button\.png/<%= asset_path "mobile\/hioki_nav_button.png" %>/g' `grep max-width -rl ./app/assets/`

sed -i '' 's/\.\.\/images\/product_r3_c4_sp\.png/<%= asset_path "mobile\/product_r3_c4_sp.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/product_r3_c5_sp\.png/<%= asset_path "mobile\/product_r3_c5_sp.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder_r3_c4\.png/<%= asset_path "mobile\/recorder_r3_c4.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder_r3_c4\.jpg/<%= asset_path "mobile\/recorder_r3_c4.jpg" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder02_01\.png/<%= asset_path "mobile\/recorder02_01.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder02_01\.jpg/<%= asset_path "mobile\/recorder02_01.jpg" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder04_01\.png/<%= asset_path "mobile\/recorder04_01.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder04_01\.jpg/<%= asset_path "mobile\/recorder04_01.jpg" %>/g' `grep max-width -rl ./app/assets/`

## sp.css
sed -i '' 's/\.\.\/images\/hioki_news_jt\.png/<%= asset_path "mobile\/hioki_news_jt.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/hioki_column_jt02\.png/<%= asset_path "mobile\/hioki_column_jt02.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/hioki_column_jt01\.png/<%= asset_path "mobile\/hioki_column_jt01.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/hioki_column_jt03\.png/<%= asset_path "mobile\/hioki_column_jt03.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/product_r3_c4_sp\.png/<%= asset_path "mobile\/product_r3_c4_sp.png" %>/g' `grep max-width -rl ./app/assets/`

sed -i '' 's/\.\.\/images\/product_r10_c8\.png/<%= asset_path "mobile\/product_r10_c8.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/hioki_column_jt04\.png/<%= asset_path "mobile\/hioki_column_jt04.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/hioki_column_jt02\.png/<%= asset_path "mobile\/hioki_column_jt02.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder03_01\.png/<%= asset_path "mobile\/recorder03_01.png" %>/g' `grep max-width -rl ./app/assets/`
sed -i '' 's/\.\.\/images\/recorder04_01\.png/<%= asset_path "mobile\/recorder04_01.png" %>/g' `grep max-width -rl ./app/assets/`

sed -i '' 's/\.\.\/images\/recorder03_01\.png/<%= asset_path "mobile\/recorder03_01.png" %>/g' `grep max-width -rl ./app/assets/`
# sed -i '' 's/\.\.\/images\/\.png/<%= asset_path "mobile\/.png" %>/g' `grep max-width -rl ./app/assets/`


