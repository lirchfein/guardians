const changeToComplete = (event) => {
  // if (event.target.classList.contains("complete-btn")) {
  //   event.currentTarget.classList.add("completed")
  //   //const
  // } else if (event.target.classList.contains("cancel-btn")) {
  //   //console.log(event.Target.innerHTML)
  //   event.currentTarget.classList.add("canceled");
  // }
  // else if (event.target.classList.contains("accept-btn")) {
  //   const acceptedForm = document.getElementById('accept-partial');
  //   document.body.appendChild(acceptedForm);
  //   const form = document.getElementById('accept-form');
  //   form.innerHTML = '<form action="/bookings/9" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="_method" value="patch"><input type="hidden" name="authenticity_token" value="bt3/xx95v3w3T5IxV1Xua2LvEq8nGxrgdqx0QbT+PRh6izUp/7VAXJmagJXAFXNjVI/O72Ts3xn4EbvFU5Dmng=="><input type="submit" name="commit" value="Mark Mission as completed" class="btn-plain no-padding complete-btn" data-disable-with="Mark Mission as completed"></form>';
  //   const mission_status = document.getElementById('mission-status');
  //   mission_status.innerText = "MISSION ONGOING"
  // }
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


