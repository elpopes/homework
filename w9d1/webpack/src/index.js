console.log("index is working");
const Game = require("./game.js");

const game = new Game();
console.log(Game());
window.Game = Game;
