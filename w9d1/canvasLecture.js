document.addEventListener("DOMContentLoaded", function () {
  const canvasEl = document.getElementById("canvas");
  canvasEl.width = 500;
  canvasEl.height = 500;

  const ctx = canvasEl.getContext("2d");
  debugger;
  ctx.fillStyle = "green";
  ctx.fillRect(25, 25, 400, 400);
  ctx.strokeStyle = "yellow";
  ctx.strokeWidth = 2;

  ctx.beginPath();
  ctx.arc(200, 200, 80, 0, 2 * Math.PI, true);
  ctx.strokeStyle = "white";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "red";
  ctx.fill();
});
