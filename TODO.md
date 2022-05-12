# My stuff

- ✅ speed up the theme
- ✅ reset css
- ✅ normalize
- ✅ implement menu
- ✅ implement slider
- ✅ fix scroll when slider slide
- ✅ fix font size
- ✅ finish git installation
- ✅ enable apache .htaccess
- ✅ timestamp cached files
- ✅ can it so hard to optimize existing at_decor ?
- ✅ fix ps_shoppingcart
- ✅ if I include jQuery, why not going in the standard AT_DECOR vierge ?
- ✅ deploy in PRODUCTION tentebarnumts.fr__at_decor-original
- ✅ fix ps_leoproductsearch / fix ps_searchbar
- ✅ fix ps_customersignin
- ✅ fix logo + menu + ps_* positions
- ✅ implement logo
- ✅ implement basket shortcut ?
- ✅ fix slider size
- ✅ make responsive "ps_leoproductsearch"
- ✅ implement homepage "Decouvrez notre gamme de barnum"
- ✅ implement homepage "Une question ? Tel"
- ✅ implement homepage "Je decouvre"
- ✅ use only Roboto fonts
- ✅ define breakpoints
- ✅ implement grid or use mini-lib ?
- ✅ reactivate disabled modules ?
- ✅ why not commit this one ? modules/appagebuilder/appagebuilder.php
- ✅ comment webpack "devtool: 'inline-source-map'"
- ✅ optimize bundle side [see webpack warning
- ✅ ⛔️ verify permissions `chmod 755 themes/at_decor/cache`
- ✅ ⛔️ execute `rm -rf ./cache/*` ???
- ✅ ⛔️ execute `rm -rf assets/cache/*` ???
- ✅ ⛔️ execute `rm -rf assets/css/*` ???
- ✅ ⛔️ execute `rm -rf assets/js/*` ???
- ✅ optimize image serving
- ✅ me faire une bibliothèque sur classic-rocket (ex. lazysizes)
- ✅ implement homepage "Quel barnum pour moi?"
- ✅ implement homepage "Comment ouvrir une tente"
- ✅ implement homepage "Notre histoire"
- 👊 implement homepage "5 garanties"
- 👊 implement homepage "Ils nous font confiance"
- 👊 implement homepage "Newsletter"
- 👊 implement homepage "Suivez-nous"
- 👊 implement homepage "Mandatory links"
- 👊 implement homepage "Credits"
- 👊 implement homepage "Google avis"
- 🟧 implement homepage "Destockage"
- 🟧 implement homepage "Barnums preferes"
- 🟧 implement homepage "Coups de coeur"
- 🟧 tune space between section
- 🟥 fix SEO paragraph, title...
- 🟥 search bar "Je cherche un barnum"
- 🟥 implement login
- 🟥 implement basket
- 🟥 implement chat
- 🟥 test pagelist BASIC
- 🟥 test pageproduct BASIC
- 🟥 deploy in PROD
- 🟥 remove slider item "souriya le bg"
- 🟥 tune homepage responsive
- 🟥 implement pagelist
- 🟥 implement pageproduct
- 🟥 implement devis form
- 🟥 replace assets absolute path by relative one
- 🟥 make cache
- 🟥 slim theme.js
- 🟥 remove unused download
- 🟥 use cache prestashop cache (Performance) ?
- 🟥 increase policy for mobile
- 🟥 check optimization of SEO
- 🟥 ⛔️ verify "Afin d'utiliser Smarty Cache, le répertoire /var/www/html/app/../themes/at_decor/cache/ doit avoir les droits d'écriture."
- 🟥 ⛔️⛔️⛔️⛔️⛔️⛔️⛔️ verify permissions `chown -R www-data:www-data classic-rocket/`
- 🟥 ⛔️⛔️⛔️⛔️⛔️⛔️⛔️ verify permissions `chown -R www-data:www-data img/`
- 🟥 ⛔️ recompile webpack
- 🟥 ⛔️ tpl, classes, modules => include it manually
- 🟥 optimize lighthouse
- 🟥 optional prestashop : remove systematic "force recompilation" ?
- 🟥 inform rouya : ⛔️ update theme/module
- 🟥 valider sur https://www.dareboost.com/fr
- 🟥 copy all images under `/img/souriya/` on the server
- 🟥 improve this warning `WARNING in entrypoint size limit: The following entrypoint(s) combined asset size exceeds the recommended limit (244 KiB). This can impact web performance.
Entrypoints:
  theme (333 KiB)
      ../css/theme.css
      theme.js`

# PERFORMANCE - CURRENT THEME
[1st]
20220303-Desktop-Performance-81%
20220303-Mobile-Performance-46%

# PERFORMANCE - OPTIMIZED THEME ("Ap Profile = home 2")
[1st]
20220303-Desktop-Performance-52%
20220303-Mobile-Performance-16%
[deactivate all modules + rename all css/js *.save + incognito mode]
20220304-Desktop-Performance-100%
20220304-Mobile-Performance-100%
[re-include megamenu]
20220309-Desktop-Performance-100%
20220309-Mobile-Performance-89%
[modify prestashop, use "manually" manner]
20220310-Desktop-Performance-100%
20220310-Mobile-Performance-100%
[install "thinned" at_decor theme on different version of prestashop (1.7.6.4)]
20220411-Desktop-Performance-100%
20220411-Mobile-Performance-100%
[use original Ap PageBuilder source code from https://tentebarnumts.fr/]
20220412-Desktop-Performance-100%
20220412-Mobile-Performance-95%

# DOCKER

`docker network create prestashop-net2`
`docker run -ti --name some-mysql2 --network prestashop-net2 -e MYSQL_ROOT_PASSWORD=admin -p 3317:3316 -d mysql:5.7`
`docker run -ti --name some-prestashop2 --network prestashop-net2 -e DB_SERVER=some-mysql2 -p 8081:80 -d prestashop/prestashop:1.7.6.4`

# PRESTASHOP - STARTER THEME

`https://stackoverflow.com/questions/55661308/prestashop-starter-theme-deprecated`
[debate which is the "best" starter theme (native prestashop or tuned from external entities ?)
[I choose to tune at_decor theme (I try to remove useless downloaded code...)

## running
FO : http://localhost:8080
BO : http://localhost:8080/admin136t2nw5t
(laosoupi59@gmail.com/<>)

# HELPING RESOURCES

- apache & .htaccess : https://ubiq.co/tech-blog/enable-mod_headers-apache-ubuntu/

# <prestashop_dir>/.htaccess

```
<IfModule mod_headers.c>
  Header unset ETag
  <FilesMatch "\.(ico|jpe?g|png|gif|swf|css|gz|woff|woff2)$">
    Header set Cache-Control "max-age=31536000, public"
  </FilesMatch>
  <FilesMatch "\.(js)$">
    Header set Cache-Control "max-age=31536000, public"
  </FilesMatch>
</IfModule>
```