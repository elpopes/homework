document.addEventListener("DOMContentLoaded", function () {
  const canvasMe = document.getElementById("mycanvas");
  canvasMe.height = 700;
  canvasMe.width = 700;

  const ctx = canvasMe.getContext("2d");

  let y = 150; // initial y position of the yellow sphere
  let dy = 1; // speed of the yellow sphere in the y direction

  function draw() {
    // clear the canvas
    ctx.clearRect(0, 0, 700, 700);

    // draw the blue background
    ctx.fillStyle = "blue";
    ctx.fillRect(0, 0, 700, 700);

    // draw the yellow sphere
    ctx.beginPath();
    ctx.arc(150, y, 100, 0, 2 * Math.PI);
    ctx.fillStyle = "yellow";
    ctx.fill();
    ctx.strokeStyle = "black";
    ctx.stroke();

    // draw the green rectangle
    ctx.fillStyle = "green";
    ctx.fillRect(0, 600, 700, 100);

    // update the y position of the yellow sphere
    y += dy;

    // if the yellow sphere has reached the bottom of the canvas, stop animating
    if (y + 100 > 990) {
      return;
    }

    // request the next animation frame
    requestAnimationFrame(draw);
  }

  // start the animation
  requestAnimationFrame(draw);
});
