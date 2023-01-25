console.log("Index is working");
const Game = require('./game.js');

const game = new Game();
console.log(game);

window.Game = Game;