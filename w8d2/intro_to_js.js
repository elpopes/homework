// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
//   }

const madLib = (verb, adjective, noun) => {
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
}

console.log(madLib('make', 'best', 'guac'));


const isSubString = (searchString, subString) => searchString.includes(subString)

console.log(isSubString("time to program", "time"));
console.log(isSubString("Jump for joy", "joys"));

function fizzBuzz(array) {
    const fizzBuzzArr = [];
    array.forEach(el => {
      if ((el % 3 === 0 || el % 5 === 0) && !(el % 3 === 0 && el % 5 === 0)) {
        fizzBuzzArr.push(el);
      }
    });
    return fizzBuzzArr;
  }


function isPrime (num) {
    for (let j = 2; j < num; j++) {
      if (num % j === 0) return false;
    }
  
    return true;
  };


function sumOfNPrimes(n) {
    let sum = 0;
    let i = 2;
    let count = 0;
    while (count < n) {
      if (isPrime(i)) {
        sum += i;
        count++;
      }
      i++;
    }
    return sum;
  }