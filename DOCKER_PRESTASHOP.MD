# PRESTASHOP DOCKER
- `docker network create prestashop-net2`
- `docker run -ti --name some-mysql2 --network prestashop-net2 -e MYSQL_ROOT_PASSWORD=admin -p 3317:3316 -d mysql:5.7`
- `docker run -ti --name some-prestashop2 --network prestashop-net2 -e DB_SERVER=some-mysql2 -p 8081:80 -d prestashop/prestashop:1.7.6.4`

OR

- `docker network create prestashop-net`
- `docker run -ti --name some-mysql --network prestashop-net -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306 -d mysql:5.7`
- `docker run -ti --name some-prestashop --network prestashop-net -e DB_SERVER=some-mysql -p 8080:80 -d prestashop/prestashop:1.7.6.4`

# INSTALLATION PRESTASHOP (WEB BROWSER)
- http://localhost:8081/
- db name : `some-mysql2`
- admin pass : `admin`

# BASE TOOLS
- `apt-get update; apt-get install git vim npm`
- uncomment `vim ~/.bashrc`

# VSCODE
- `mkdir .vscode; touch .vscode/settings.json`
```
{
  "workbench.colorCustomizations": {
    "titleBar.activeBackground": "#00762f"
  },
} 
```

# GIT

- `vim ~/.gitconfig` (cf. my ~/.gitconfig)
- `curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash >> ~/.git-completion.bash`
- `source ~/.git-completion.bash`
- `source ~/.gitconfig`
- `source ~/.bashrc`

# PRESTASHOP INSTALLATION
- `rm -rf install/;mv admin/ admin136t2nw5t/`
- performance : compilation & cache

# SWITCH THEME
- change logo https://tentebarnumts.fr/img/ts-barnum-logo-1616570188.jpg
- manually install at_decor.zip theme
- switch to at_decor
- choose home->profile2
- (clean Ap PageBuilder)

# 🟥 MY UPDATES

## /classes
- `git init; git add .; git ci -m '1st commit'; git remote add origin git@github.com:souriya777/tentebarnumts.fr-classes.git; git fetch`
- 🟥🟥🟥🟥🟥🟥 ONLY ON MY DOCKER `git reset --hard origin/master`

## /js
- `git init; git add .; git ci -m '1st commit'; git remote add origin git@github.com:souriya777/tentebarnumts.fr-js.git; git fetch`
- 🟥🟥🟥🟥🟥🟥 ONLY ON MY DOCKER `git checkout main`

## /themes/at_decor
- `git init; git add .; git ci -m '1st commit'; git remote add origin git@github.com:souriya777/tentebarnumts.fr.git; git fetch`
- 🟥🟥🟥🟥🟥🟥 ONLY ON MY DOCKER `git checkout main`
- `chown www-data:www-data -R *`

## /modules
- `git init; git add .; git ci -m '1st commit'; git remote add origin git@github.com:souriya777/tentebarnumts.fr-modules.git; git fetch`
- 🟥🟥🟥🟥🟥🟥 ONLY ON MY DOCKER : download zip `appagebuilder` & `leobootstrapmenu`
- `touch .gitignore`
- `chown www-data:www-data -R *`
- paste 
```
*
!appagebuilder/
!leobootstrapmenu/
```

# THEME - OPTIMIZATIONS

- deactivate all AT_DECOR modules
- `rm -rf assets/cache/*; rm -rf assets/css/*; rm -rf assets/js/*; touch assets/css/theme.css; touch assets/js/theme.js; chown www-data:www-data -R *`

# DEPLOY ON PRODUCTION

- export active theme
- manually install at_decor.zip theme
- switch to at_decor
- ⛔️ manually install "Wishlist" module from prestashop
- choose home->profile2
- choose the good "theme builder"
- (clean Ap PageBuilder) or import static_appagebuilder_souriya/appagebuilderhomeALL.xml
- remove "force compilation" ?