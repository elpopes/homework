/* const */


// Scope: "The scope of a variable is the region of a program where it can be accessed."

function scopeExample() {
  // SCOPE A; variables: x
  const x = "x";

  if (true) {
    // SCOPE B; variables: x, y
    const y = "y";

    {
      // SCOPE C; variables: x, y, z
      const z = "z";
    }
  }
}



/* const */

function howToConst() {
  const username = 'Harold';

  if (true) {
    const username = 'Url';
    // username = 'Url';

    console.log(username); // Harold
  }

  console.log(username); // Harold
}





/* let */

function howToLet() {
  let secret = "I'm secretly a cat.";

  if (true) {
    secret = "I'm secretly a banana";
    console.log(secret); //

    let secret = "Nope, definitely a cat";
  }

  console.log(secret); //
}





/* var */

function howToVar() {
  var username = 'Harold';

  if (true) {
    var username = 'Url';

    console.log(username); // Url
  }

  console.log(username); // Url
}






/* global variables */

sillyVariable = "Should I use these?";

function globalsSuck() {
  sillyVariable = "Do NOT use these";
}

function globalsSuck2() {
  sillyVariable = "Oh no";
}