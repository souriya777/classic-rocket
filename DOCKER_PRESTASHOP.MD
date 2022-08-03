# PRESTASHOP DOCKER
- `docker network create prestashop-net`
- `docker run -ti --name some-mysql --network prestashop-net -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306 -d mysql:5.7`
- 🟥 `docker run -ti --name some-prestashop --network prestashop-net -e DB_SERVER=some-mysql -p 8080:80 -d prestashop/prestashop:1.7.6.4`
- ✅ `docker run -ti --name some-prestashop-fast --network prestashop-net -e DB_SERVER=some-mysql -p 8080:80 -e PS_DOMAIN=localhost:8080 -d prestashop/prestashop:1.7.6.4`

# INSTALLATION PRESTASHOP (WEB BROWSER)
- http://localhost:8080/
- db name : `some-mysql`
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

# SPECIFIC 'modern-prestashop-starter-theme'
- `npm install --global yarn`
- `npm install --global n`
- `n latest`
- `apt-get update`
- `apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev`
- install python https://www.vultr.com/docs/update-python3-on-debian/

# SWITCH THEME
- change logo https://tentebarnumts.fr/img/ts-barnum-logo-1616570188.jpg
- change favicon https://tentebarnumts.fr/img/favicon.ico
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
- manually install *.zip theme
- switch to theme
- ⛔️ manually install "Wishlist" module from prestashop
- (clean Ap PageBuilder) or import static_appagebuilder_souriya/appagebuilderhomeALL.xml
- remove "force compilation" ?
