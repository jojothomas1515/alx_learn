const playBtn = document.querySelector("#play-btn");
const sio = io();

sio.addEventListener("connect", () => alert("connected"));

playBtn.addEventListener("click", ()=> {
    sio.emit("play", JSON.stringify({message: "i want to play"}));
});

sio.addEventListener("play", function (data) {
    console.log(data);
});
