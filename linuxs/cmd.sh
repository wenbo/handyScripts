$ sed -i '' "s//g" `grep 'href="html' -rl app/`
git grep '"front/hioki' | grep html.erb
## emacs
$ sed -i '' "s/user_type/role/g" `grep user_type -rl app/controllers/`

sed -i '' "s/\/assets_doc\/front\/images\//\/assets_doc\/front\/html\/images\//g" `grep 'assets_doc' -rl app/`

$ sed -i '' "s/src=\"html/src=\"\/assets_doc\/front\/html/g" `grep 'src="html' -rl app/`
$ sed -i '' "s/href=\"html/href=\"\/assets_doc\/front\/html/g" `grep 'href="html' -rl app/`
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

