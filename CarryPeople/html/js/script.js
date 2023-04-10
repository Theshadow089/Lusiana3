window.addEventListener("message", (event) => {
    event = event.data;
    if  (event.action == "setgym") {
        document.getElementById("fit").innerHTML = (event.a)+"%";
    };
})

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}
