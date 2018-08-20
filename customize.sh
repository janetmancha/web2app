
echo "Enter app id (Example: com.mydomain.helloworld): "
read APP_ID
echo "Enter app URL (Example: http://myappweb.com): "
read APP_URL
echo "Enter app full name (Example: Hello World): "
read APP_FULL_NAME
echo "Enter app short name with no spaces (Example: HelloWorld): "
read APP_SHORT_NAME
echo "Enter app description (Example: Hello to everybody!): "
read APP_DESCRIPTION
echo "Enter author name:"
read AUTHOR_NAME
echo "Enter author email: "
read AUTHOR_EMAIL
echo "Enter author web (Example: http://foo.bar): "
read AUTHOR_WEB


cat config.xml.tmpl | sed -e "s^%APP_ID%^$APP_ID^g" -e "s^%APP_FULL_NAME%^$APP_FULL_NAME^g" -e "s^%APP_DESCRIPTION%^$APP_DESCRIPTION^g" \
-e "s^%AUTHOR_NAME%^$AUTHOR_NAME^g" -e "s^%AUTHOR_EMAIL%^$AUTHOR_EMAIL^g" -e "s^%AUTHOR_WEB%^$AUTHOR_WEB^g" >config.xml

cat package.json.tmpl | sed -e "s^%APP_ID%^$APP_ID^g" -e "s^%APP_SHORT_NAME%^$APP_SHORT_NAME^g" -e "s^%APP_DESCRIPTION%^$APP_DESCRIPTION^g" \
-e "s^%AUTHOR_NAME%^$AUTHOR_NAME^g" -e "s^%AUTHOR_EMAIL%^$AUTHOR_EMAIL^g" -e "s^%AUTHOR_WEB%^$AUTHOR_WEB^g" >package.json

cat ionic.config.json.tmpl | sed -e "s^%APP_ID%^$APP_ID^g" -e "s^%APP_SHORT_NAME%^$APP_SHORT_NAME^g" -e "s^%APP_DESCRIPTION%^$APP_DESCRIPTION^g" \
-e "s^%AUTHOR_NAME%^$AUTHOR_NAME^g" -e "s^%AUTHOR_EMAIL%^$AUTHOR_EMAIL^g" -e "s^%AUTHOR_WEB%^$AUTHOR_WEB^g" >ionic.config.json

cat src/pages/home.ts.tmpl | sed -e "s^%APP_URL%^$APP_URL^g" >src/pages/home.ts
