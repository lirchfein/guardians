const changeToComplete = (event) => {
  console.log(event.currentTarget);
  console.log(event.target.classList);
  if (event.target.classList.contains("tick-empty")) {
    event.currentTarget.classList.add("completed")
  }
}

function addEventListenerToEmptyTick() {
  const listItems = document.querySelectorAll('.list-item')
  listItems.forEach((listItem) => {
    listItem.addEventListener("click", changeToComplete);
  });
};
export { addEventListenerToEmptyTick };


