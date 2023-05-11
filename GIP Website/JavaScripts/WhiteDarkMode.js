function toggleWhiteDarkTheme() {
    if (document.getElementById("lblWhiteDarkMode").textContent == "Dark Theme") {
        document.getElementById("lblWhiteDarkMode").textContent = "Light Theme";
        localStorage.setItem("theme", "DarkTheme");
        enableDarkTheme();
    }
    else {
        document.getElementById("lblWhiteDarkMode").textContent = "Dark Theme";
        localStorage.setItem("theme", "LightTheme");
        disableDarkTheme();
    }
}

if (localStorage.getItem("theme") == "DarkTheme") {
    enableDarkTheme();
}
else {
    disableDarkTheme();
}

function enableDarkTheme() {
    document.body.classList.add("DarkTheme");
    document.getElementById("lblWhiteDarkMode").textContent = "Light Theme";
}

function disableDarkTheme() {
    document.body.classList.remove("DarkTheme");
    document.getElementById("lblWhiteDarkMode").textContent = "Dark Theme";
}