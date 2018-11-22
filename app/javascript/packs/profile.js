const changeToComplete = (event) => {
  if (event.target.classList.contains("btn-plain")) {
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
  event.preventDefault();
  const activeTab = document.querySelectorAll('.active')[0];
  const clickedTab = event.target

  const activeTabContent = document.querySelectorAll('.' + activeTab.id)[0];
  activeTabContent.classList.toggle('show');

  const clickedTabContent = document.querySelectorAll('.' + clickedTab.id)[0];
  clickedTabContent.classList.toggle('show');

  activeTab.classList.toggle('active')
  clickedTab.classList.toggle('active')

  // trying to make explision only show on tabs, whose content is big enough
  // but not required anymore as it seems.
  // will leave code until finally decicded:

  // const explosion = document.getElementById('explosion');
  // const atom = document.getElementById('atom');
  // if (clickedTab.id == ) {
  //   atom.classList.add('profile-icon-view')
  // } else {
  //   atom.classList.('profile-icon-view')
  // }
}

function addEventListenerToTabs() {
  const tabs = document.querySelectorAll('.tab')
  tabs.forEach((tab) => {
    tab.addEventListener("click", changeTab);
  });
};

const changeShownBookings = (event) => {
  let y = window.scrollY
  if(event.target.innerText == 'Show Less') {
    event.target.innerText = 'Show More'
    y = 460;
  } else if (event.target.innerText == 'Show More') {
    event.target.innerText = 'Show Less'
  }
  let offset = 0;
  const hiddenBookings = document.querySelectorAll('.show-less-booking');
  hiddenBookings.forEach((booking) => {
    booking.classList.toggle('show-more')
  })
  window.scroll({
    top: y,
    left: 0,
    behavior: 'smooth'
  });
  // document.body.style.paddingTop = 0 + 'px';
}

function addEventListenerShowMore() {
  const showBtn = document.getElementById('show-btn');
  if (showBtn) {
  showBtn.addEventListener('click', changeShownBookings);
  }
}


export { addEventListenerToEmptyTick };
export { addEventListenerToTabs };
export { addEventListenerShowMore };


