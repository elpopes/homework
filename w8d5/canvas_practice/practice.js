document.addEventListener("DOMContentLoaded", function () {
  const canvasMe = document.getElementById("mycanvas");
  canvasMe.height = 700;
  canvasMe.width = 700;
  //   console.log(canvasMe);

  const ctx = canvasMe.getContext("2d");
  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 700, 700);

  ctx.beginPath();
  ctx.arc(150, 150, 100, 0, 2 * Math.PI);
  ctx.fillStyle = "yellow";
  ctx.fill();
  ctx.strokeStyle = "black";
  ctx.stroke();

  ctx.fillStyle = "green";
  ctx.fillRect(0, 600, 700, 100);
});
