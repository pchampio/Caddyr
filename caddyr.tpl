<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Index of {{.Name}}</title>
    <link rel="stylesheet" href="/Caddyr/style.css" />
    <script src="/Caddyr/app.js" type="text/javascript" charset="utf-8"></script>
  </head>
  <body>
    <h1>Index of {{.Path}}</h1>
    <div class="wrapper">
      <form>
        <input id="searchTerm" name="filter" type="search" autocapitalize="none" onkeyup="doSearch()">
      </form>
      <table>
        <thead>
          <tr>
            <th>
              <img src="/Caddyr/icons/default.png" alt="[ICO]">
            </th>
            <th><a id="link-name" >Name</a></th>
            <th><a id="link-time" >Modified </a></th>
            <th><a id="link-size" >Size</a></th>
          </tr>
        </thead>
          <tbody id="dataTable">
          {{if .CanGoUp}}
          <tr>
            <td valign="top">
              <a href="..">
                <img src="/Caddyr/icons/up.png" alt="[ICO]">
              </a>
            </td>
            <td>
              <a href="..">Go up a dir</a>
            </td>
            <td></td>
            <td align="right">&mdash;</td>
          </tr>
          {{end}}

          {{range .Items}}
              {{if not .IsDir}}
              <a class="play" href="intent:{{.URL}}#Intent;scheme=file;action=android.intent.action.VIEW;end;"target="_blank">
              {{end}}
            <tr>
              <td valign="top">
                <a href="{{.URL}}">
                  {{if .IsDir}}
                  <img src="/Caddyr/icons/dir.png" alt="[IMG]"></a>
                {{else}}
                <script>
                  document.write('<img src="/Caddyr/icons/'+extension("{{.Name}}")+'.png" alt="[IMG]" onerror="this.src=\'/Caddyr/icons/default.png\'"/>');
                </script>
                {{end}}
              </td>
              <td>
                <a href="{{.URL}}">{{.Name}}</a>


              </td>
              <td>
                <script>
                  document.write(prettyDate("{{.ModTime}}"));
                </script>
              </td>
              <td align="right">
                {{if not .IsDir}}
                <script>
                  document.write(humanFileSize({{.Size}}));
                </script>
                {{else}}
                Directory
                {{end}}
              </td>
              {{if not .IsDir}}
              </a>
              {{end}}
            </tr>
          </a>
          {{end}}
        </tbody>
      </table>
    </div>
  </body>
  <footer>
    <b>Caddyr</b> by <a href="https://github.com/Drakirus/Caddyr">@drakirus</a></br>
    <a href="https://icons8.com">  Icon pack by Icons8</a>
  </footer>

  <script type="text/javascript" charset="utf-8">
    console.log(window.location);
  </script>
</html>
<!-- vim:set ft=html: -->
