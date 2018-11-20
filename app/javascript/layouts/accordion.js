
function expandAccordionTab() {
  const text = this.nextSibling.nextSibling;
  text.classList.toggle('toggle-text');
  text.classList.toggle('toggle-text-2');
  this.querySelector('.fa-caret-right').classList.toggle('initial-arrow-down')
}

function addEventListenerforAccordionTab() {
  const buttons = document.querySelectorAll('.accordion-button')
  buttons.forEach((button) => {
    button.addEventListener("click", expandAccordionTab);
  });
};
export { addEventListenerforAccordionTab };
