function autoRefresh() {
    window.location = window.location.href;
}
setInterval('autoRefresh()', localStorage.getItem('refreshTime'));