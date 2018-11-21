const changeToComplete = (event) => {
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

const changeTab = (event) => {
  console.log(event.target)
  event.preventDefault();
  const tabs = document.querySelectorAll('.tab')
  tabs.forEach((tab) => {
    tab.classList.toggle('active');
  })
  const tabContents = document.querySelectorAll('.tab-content');
  tabContents.forEach((tabContent) => {
    tabContent.classList.toggle('show');
  })
}

function addEventListenerToTabs() {
  const tabs = document.querySelectorAll('.tab')
  tabs.forEach((tab) => {
    tab.addEventListener("click", changeTab);
  });
};


export { addEventListenerToEmptyTick };
export { addEventListenerToTabs };


