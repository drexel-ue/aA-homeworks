
document.addEventListener("DOMContentLoaded", function () {
    const canvas = document.getElementById('my-house');
    canvas.height = 500;
    canvas.width = 500;
    const ctx = canvas.getContext('2d');

    ctx.fillStyle = "purple";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "green";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();

});
