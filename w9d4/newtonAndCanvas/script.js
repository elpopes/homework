const canvas = document.getElementById("myCanvas");
const ctx = canvas.getContext("2d");

//set the canvas width and height to take up the window size
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;
canvas.style.width = "100%";
canvas.style.height = "100%";

let maxSpeed = 0.1; // Speed at which the bumper moves towards the mouse
let isCharging = false; // Flag to check if the mouse button is pressed

window.addEventListener("resize", () => {
  /* update canvas width and height */
});

// An array of balls
let balls = [
  {
    x: canvas.width / 2,
    y: canvas.height / 2,
    radius: 50,
    dx: 5,
    dy: 5,
    color: randomColor(), // added function call to generate random color
  },
];

// Create the bumper object
const bumper = {
  x: canvas.width / 2,
  y: canvas.height / 2,
  radius: 50,
  color: "blue",
};

// Create the projectile object
let projectile = {
  x: canvas.width / 2,
  y: canvas.height / 2,
  radius: 10,
  color: "black",
};

// Function to generate random color
function randomColor() {
  let letters = "0123456789ABCDEF";
  let color = "#";
  for (let i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}

// Function to create a new ball
function createBall() {
  let ball = {
    x: Math.random() * canvas.width, //random x position
    y: Math.random() * canvas.height, //random y position
    radius: Math.random() * 50 + 10, //random radius between 10 and 60
    dx: Math.random() * 10 - 5, //random horizontal velocity between -5 and 5
    dy: Math.random() * 10 - 5, //random vertical velocity between -5 and 5
    color: randomColor(),
  };
  balls.push(ball);
}

setInterval(createBall, 30000);

// event listener to track mouse movement
canvas.addEventListener("mousemove", function (event) {
  if (!isCharging) {
    let dx = event.offsetX - bumper.x;
    let dy = event.offsetY - bumper.y;
    bumper.x += dx * maxSpeed;
    bumper.y += dy * maxSpeed;
  }
});

canvas.addEventListener("mousedown", function (event) {
  isCharging = true;
  startX = event.clientX;
  startY = event.clientY;
});

canvas.addEventListener("mouseup", function (event) {
  isCharging = false;
  let angle = Math.atan2(bumper.y - startY, bumper.x - startX);

  projectile.dx = Math.cos(angle) * 10;
  projectile.dy = Math.sin(angle) * 10;
});

// The animation function
function animate() {
  // Request the browser to call the animate function again before the next repaint
  requestAnimationFrame(animate);

  // Clear the entire canvas
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  if (!isCharging) {
    let dx = bumper.x - event.clientX;
    let dy = bumper.y - event.clientY;
    let distance = Math.sqrt(dx * dx + dy * dy);
    let speed = distance / maxSpeed;

    bumper.x -= dx / speed;
    bumper.y -= dy / speed;
  }

  // Draw the bumper
  ctx.beginPath();
  ctx.arc(bumper.x, bumper.y, bumper.radius, 0, 2 * Math.PI);
  ctx.fillStyle = bumper.color;
  ctx.fill();

  // move and draw the projectile
  projectile.x += projectile.dx;
  projectile.y += projectile.dy;
  ctx.beginPath();
  ctx.arc(projectile.x, projectile.y, projectile.radius, 0, 2 * Math.PI);
  ctx.fillStyle = projectile.color;
  ctx.fill();

  // Draw the balls and update their positions
  for (let ball of balls) {
    ctx.beginPath();
    ctx.arc(ball.x, ball.y, ball.radius, 0, 2 * Math.PI);
    ctx.fillStyle = ball.color;
    ctx.fill();
    ball.x += ball.dx;
    ball.y += ball.dy;

    // Check for collision with the bumper
    if (
      distance(bumper.x, bumper.y, ball.x, ball.y) <
      bumper.radius + ball.radius
    ) {
      let angle = Math.atan2(ball.y - bumper.y, ball.x - bumper.x);
      ball.dx = Math.cos(angle) * 10;
      ball.dy = Math.sin(angle) * 10;
    }

    // Check for collision with the walls
    if (ball.x + ball.radius > canvas.width || ball.x - ball.radius < 0) {
      ball.dx = -ball.dx;
    }

    if (ball.y + ball.radius > canvas.height || ball.y - ball.radius < 0) {
      ball.dy = -ball.dy;
    }
  }
}

animate();
