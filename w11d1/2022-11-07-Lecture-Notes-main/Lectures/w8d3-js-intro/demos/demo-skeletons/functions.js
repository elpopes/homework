/* Function Demo */


/* Named functions */
console.log(square(10));

function square(num) {
    debugger
    // What is this? window
    return num * num;
}











/* Function expresions, variable assigned functions / anonymous functions */

// const feedMe = function(food) {
//     return 'Thanks for the ' + food + '!';
//     // return `Thanks for the ${food}!`
// }








/* Es6 Arrow function expression */

// const feedMe = (food) => {
//     return 'Thanks for the ' + food + '!';
// }

// console.log(feedMe('apple')) // This wont work

// const feedMe = (food) => 'Thanks for the ' + food + '!';











/* Constructor functions */

// Always name constructor functions starting with a capital letter
function User(username, age) {
    debugger
    this.username = username;
    this.age = age;
    // this.greet = () => "Hello!"
}

// this inside the greet function refers to the obj called on, which is kin

User.prototype.greet = function() {
    debugger
    return `Hello, my name is ${this.username}!`
}

const kin = new User("kin", 12);
console.log(kin.greet());