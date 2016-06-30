////////////////////////////////////////////////////////////////////////
//                       UTC + 2h for my country                      //
var toLocal=2
////////////////////////////////////////////////////////////////////////
// pretty size function
function humanFileSize(bytes, si) {
  var thresh = si ? 1000 : 1024;
  if(Math.abs(bytes) < thresh) {
    return bytes + ' B';
  }
  var units = si
    ? ['kB','MB','GB','TB','PB','EB','ZB','YB']
    : ['KiB','MiB','GiB','TiB','PiB','EiB','ZiB','YiB'];
  var u = -1;
  do {
    bytes /= thresh;
    ++u;
  } while(Math.abs(bytes) >= thresh && u < units.length - 1);
  return bytes.toFixed(1)+' '+units[u];
}

// pretty date function
function prettyDate(time){
  var date = new Date((time || "").replace(/-/g,"/").replace(/[TZ]/g," ").replace(/\+.*$/g,"")),
  date = new Date(date.getTime() + toLocal*3600000);
  diff = (((new Date()).getTime() - date.getTime()) / 1000),
  day_diff = Math.floor(diff / 86400);
  if (isNaN(day_diff) || day_diff < 0)
    return "";
  return day_diff == 0 && (
      diff < 60 && "just now" ||
      diff < 120 && "1 minute ago" ||
      diff < 3600 && Math.floor( diff / 60 ) + " minutes ago" ||
      diff < 7200 && "1 hour ago" ||
      diff < 86400 && Math.floor( diff / 3600 ) + " hours ago") ||
    day_diff == 1 && "Yesterday" ||
    day_diff < 7 && day_diff + " days ago" ||
    day_diff < 31 && Math.ceil( day_diff / 7 ) + " weeks ago" ||
    day_diff > 31 && Math.round(day_diff / 31) + " months ago";
}

function extension(filename) {
  return (/[.]/.exec(filename)) ? /[^.]+$/.exec(filename) : "default";
}

function doSearch() {
  var searchText = document.getElementById('searchTerm').value;
  var targetTable = document.getElementById('dataTable');
  var targetTableColCount;

  //Loop through table rows
  for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {

    var rowData = targetTable.rows.item(rowIndex).cells.item(1);
    rowData = rowData.getElementsByTagName('a')[0].innerHTML.toLowerCase();

    // If search term is not found in row data
    // then hide the row, else show
    if (rowData.indexOf(searchText) == -1)
      targetTable.rows.item(rowIndex).style.display = 'none';
    else
      targetTable.rows.item(rowIndex).style.display = 'table-row';
  }
}

document.addEventListener("DOMContentLoaded", function(event) {

  var LKname = document.getElementById("link-name");
  if (document.URL.indexOf("asc") != -1) {
    LKname.href="?sort=name&amp;order=desc";
  }else{
    LKname.href="?sort=name&amp;order=asc";
  }

  var LKtime = document.getElementById("link-time");
  if (document.URL.indexOf("asc") != -1) {
    LKtime.href="?sort=time&amp;order=desc";
  }else{
    LKtime.href="?sort=time&amp;order=asc";
  }

  var LKsize = document.getElementById("link-size");
  if (document.URL.indexOf("asc") != -1) {
    LKsize.href="?sort=size&amp;order=desc";
  }else{
    LKsize.href="?sort=size&amp;order=asc";
  }
});
