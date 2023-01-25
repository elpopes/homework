document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  const handleFavoriteSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoritesList = document.getElementById("sf-places");
    favoritesList.appendChild(newListLi);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);

  // adding new photos

  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);

    const dogPhotosList = document.querySelector(".dog-photos");
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);
});

// document.addEventListener("DOMContentLoaded", () => {
//   // toggling restaurants

//   const toggleLi = (e) => {
//     const li = e.target;
//     if (li.className === "visited") {
//       li.className = "";
//     } else {
//       li.className = "visited";
//     }
//   };

//   document.querySelectorAll("#restaurants li").forEach((li) => {
//     li.addEventListener("click", toggleLi);
//   });

//   // adding SF places as list items

//   // Add an event listener for the submit button
//   const placesSubmitButton = document.getElementById("submit-button");
//   placesSubmitButton.addEventListener("click", (event) => {
//     // Prevent the default action (refresh the page)
//     event.preventDefault();

//     // Get the value of the input box
//     const place = document.getElementById("place-input").value;

//     // Create a new li element with the place as the text
//     const newItem = document.createElement("li");
//     newItem.textContent = place;

//     // Append the new li element to the list
//     const list = document.getElementById("places-list");
//     list.appendChild(newItem);

//     // Clear the input box
//     document.getElementById("place-input").value = "";
//   });

//   // adding new photos

//   // Add an event listener for the toggle button
//   const toggleButton = document.getElementById("toggle-button");
//   toggleButton.addEventListener("click", (event) => {
//     // Toggle the visibility of the form
//     const form = document.getElementById("photo-form");
//     if (form.style.display === "none") {
//       form.style.display = "block";
//     } else {
//       form.style.display = "none";
//     }
//   });

//   // Add an event listener for the submit button
//   const photosSubmitButton = document.getElementById("submit-button");
//   photosSubmitButton.addEventListener("click", (event) => {
//     // Prevent the default action (refresh the page)
//     event.preventDefault();

//     // Get the value of the input box
//     const url = document.getElementById("photo-input").value;

//     // Create a new li element
//     const newItem = document.createElement("li");

//     // Create a new img element with the URL as the src
//     const newImg = document.createElement("img");
//     newImg.src = url;

//     // Set the width of the img element
//     newImg.width = "200";

//     // Append the img element to the li element
//     newItem.appendChild(newImg);

//     // Append the li element to the list
//     const list = document.getElementById("puppies-list");
//     list.appendChild(newItem);

//     // Clear the input box
//     document.getElementById("photo-input").value = "";
//   });
// });
