//grab the dom elements we need (groceries, grocery-form, recipe-list, recipes)
const groceries = document.querySelector('.groceries')
const groceryForm = document.querySelector(.'grocery-form')
const recipeList = document.querySelector('.recipe-list')
const recipes = document.querySelector('.recipes')

//create variables to hold localStorage things
const lsItems = JSON.parse(localStorage.getItem("items")) || [];
const lsRecipes = JSON.parse(localStorage.getItem("recipes")) || [];

//---------------PHASE 1 DOM MANIPULATION DEMO-----------------//
//create event handler that adds to our grocery list
const addItem = (e) => {
    e.preventDefault();
    // let input = document.querySelector("input [name='add-grocery']");

    // let value = input.value

    // const item = { value: value }



};

//create action to render grocery list items
const updateList = () => {
  // method 1: using string html element
  // method 2: using document.createElement
};

//create event handler to cross out list items on click
const markAsDone = (e) => {};

// be sure to add event listeners to correspoinding elements and call update list

//---------------PHASE III FOR WINDOW, LOCATION, HISTORY DEMO-----------------//

//Review event handler that adds to our recipes list
// const addRecipe = (e) => {

//     let recipeText = e.target.innerText;

//     lsRecipes.push({ recipeText });
//     localStorage.setItem("recipes", JSON.stringify(lsRecipes))

//     updateWeeklyRecipe();
// }

//create action to render our recipes list
const updateWeeklyRecipe = () => {
  recipes.innerHTML = lsRecipes.map((recipe) => {
    return `
            <a href="" class="recipeText">
                ${recipe.recipeText}
            </a>
            `;
  });

  //ADD AN EVENT LISTENER to set window.location.hash
};

//---------------------------------------------------------------------//

//add event listener to on submit for form to process add item

//add event listener to cross out a list item

//add event listener to to add recipe

//call our methods to populate DOM

//--------------------PHASE II EVENT BUBBLIING DEMO---------------------------------//

// let groc = document.querySelectorAll(".groceries li") //select the li's
// groc.forEach((child) => {
//     child.addEventListener("click", markAsDone);
// })
// const boo = (e) => {
//     alert("Boo from the groceries ul! You didn't expect this, did you?!")
// }

// groceries.addEventListener("click", boo); //parent

//---------------------------------------------------------------------//
