'use strict';

var delayedLink = document.getElementById('sm_dl_wait');

if (delayedLink !== null) {
  window.location = delayedLink.getAttribute('data-id');
}
