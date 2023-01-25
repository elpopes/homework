document.addEventListener("DOMContentLoaded", function() {
  const canvasEl = document.getElementById("canvas");
  // debugger
  canvasEl.width = 500;
  canvasEl.height = 500;

  const ctx = canvasEl.getContext("2d");

  ctx.fillStyle = "black";
  ctx.fillRect(0, 0, 400, 400);

  ctx.beginPath();
  ctx.arc(250, 250, 80, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'white';
  ctx.lineWidth = 30;
  ctx.stroke();
  ctx.fillStyle = 'blue';
  ctx.fill();
})