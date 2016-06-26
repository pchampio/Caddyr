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
      <table id="directory">
        <tbody>

          <tr>
            <th>
              <img src="/Caddyr/icons/default.png" alt="[ICO]">
            </th>
            <th>Name</th>
            <th>Last modified</th>
            <th>Size</th>
          </tr>

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
            <td align="right">Directory</td>
          </tr>
          {{end}}

          {{range .Items}}
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
          </tr>
          {{end}}
        </tbody>
      </table>
    </div>
  </body>
  <footer>
    <b>Caddyr</b> by <a href="https://github.com/Drakirus/">@drakirus</a></br>
    <a href="https://icons8.com">  Icon pack by Icons8</a>
  </footer>
</html>
<!-- vim:set ft=html: -->
