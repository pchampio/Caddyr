# Caddyr
Directory theme for https://caddyserver.com/

> forked form [jfrazelle](https://github.com/jfrazelle/directory-theme)  

**cadyr** is a simple theme for your [Caddy-Server](https://caddyserver.com/) directory listing.  
![demo](https://raw.githubusercontent.com/Drakirus/Caddyr/master/caddyr.png)

 **Features**

- custom styling of the default directory indexing
- changes "Last modified" column to display time as time since (ex. 2 minutes ago, 4 days ago, etc)
- videos files are open in a player (only for mobile)

### Caddy Setup

Let's assume the root folder of your caddyserver is `/var/www/html/` (the path thus being *http://localhost/*)

Be sure you have `browse` enable in the *Caddyfile*  
```
browse / /var/www/html/Caddyr/caddyr.tpl
```

**Installation**

```bash
cd /var/www/html/
git clone https://github.com/Drakirus/Caddyr.git
cd Caddyr/
rm README.md caddyr.png
rm -rf .git
```
Then open your favorite browser, **IE**

### Credits
Based off [apaxy](https://github.com/AdamWhitcroft/Apaxy) by Adam Whitcroft  
And [directory-theme](https://github.com/jfrazelle/directory-theme) by Jess Frazelle  
Icon pack by [Icons8](https://icons8.com/)


