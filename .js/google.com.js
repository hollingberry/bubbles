'use strict';

function noTrack(a) {
  a.removeAttribute("onmousedown");
  a.removeAttribute("data-ctbtn");
  a.removeAttribute("data-cthref");
  var match = a.search.match(/url=([^&#]*)/);
  if (match !== null && match[1] !== null) {
    a.href = decodeURIComponent(match[1]);
  }
}

NodeList.prototype.forEach = Array.prototype.forEach;

document
  .getElementsByTagName('a')
  .forEach(noTrack);
