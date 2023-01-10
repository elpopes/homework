function NBAPlayer(name, team, position) {
 this.name = name;
 this.team = team;
 this.position = position;
 }

let curry = new NBAPlayer("Steph Curry", "GS Warriors", "Point Guard");

// NBAPlayer {
//     name: 'Steph Curry';
//     team: 'GS Warriors';
//     position: 'Point Guard';
// }

NBAPlayer.prototype.dunk = function() {
    console.log(`${this.name} dunks!`);
}


