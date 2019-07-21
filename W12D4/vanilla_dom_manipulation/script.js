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

  document.querySelector('.favorite-submit').addEventListener('click', function (event) {
    event.preventDefault();
    const input = document.querySelector('.favorite-input');
    const text = input.value;
    input.value = '';

    const places = document.querySelector('#sf-places');
    const newPlace = document.createElement('li');
    newPlace.text = text;
    places.appendChild(newPlace);
  });



  // adding new photos

  document.querySelector('.photo-show-button').addEventListener('click', function (event) {
    event.preventDefault();
    const form = document.querySelector('.photo-form-container');
    form.classList.remove('hidden');

    const input = document.querySelector('.photo-url-input');
    const submit = document.querySelector('.photo-url-submit');
    submit.addEventListener('click', function (event) {
      event.preventDefault();
      const photos = document.querySelector('.dog-photos');
      const newPup = document.createElement('li');
      const pupPic = document.createElement('img');
      pupPic.src = input.value;
      input.value = '';
      newPup.appendChild(pupPic);
      photos.appendChild(newPup);
    });
  });

});
