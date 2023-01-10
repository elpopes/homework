console.log("Game is working");
const Asteroid = require("./asteroid.js");
function Game() {
  this.asteroid = new Asteroid(5);
}

// const game = new Game();
// console.log(game);

module.exports = Game;
