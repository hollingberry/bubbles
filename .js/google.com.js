'use strict';

function isResult(a) {
  return (a.href !== null) && (a.pathname == '/url');
}

function noTrack(a) {
  var match = a.search.match(/url=([^&#]*)/);
  if (match !== null && match[1] !== null) {
    a.href = decodeURI(match[1]);
  }
}

NodeList.prototype.filter  = Array.prototype.filter;
NodeList.prototype.forEach = Array.prototype.forEach;

document
  .getElementsByTagName('a')
  .filter(isResult)
  .forEach(noTrack);
