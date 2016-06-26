# Caddyr
Directory theme for https://caddyserver.com/

**cadyr** is a simple theme for your [Caddy-Server](https://caddyserver.com/) directory listing.  
![demo](https://github.com/Drakirus/Caddyr/blob/master/caddyr.png)

 **Features**

- custom styling of the default directory indexing
- changes "Last modified" column to display time as time since (ex. 2 minutes ago, 4 days ago, etc)

### Caddy Setup

Let's assume the root folder of your caddyserver is `/var/www/html/` (the path thus being http://localhost/)

Be sure you have `browse` enable in the *Caddyfile*  
```
browse / /var/www/html/theme/caddyr.tpl
```

**Installation**

```bash
cd /var/www/html/
git clone https://github.com/Drakirus/Caddyr.git
rm README.md caddyr.png
rm -rf .git
```
Then open your favorite browser, **IE**

### Credits
Based off [apaxy](https://github.com/AdamWhitcroft/Apaxy) by Adam Whitcroft 
And [directory-theme](https://github.com/jfrazelle/directory-theme) by Jess Frazelle  
Icon pack by [Icons8](https://icons8.com/)


