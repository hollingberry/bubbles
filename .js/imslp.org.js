// bypass obnoxious download delay
if (elem = document.getElementById('sm_dl_wait'))
  window.location = elem.getAttribute('data-id');
