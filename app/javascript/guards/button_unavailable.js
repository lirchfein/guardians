function grayButton() {
  const bookButton = document.querySelector('.book-button-guard');
  bookButton.id = 'book-button-guard';
};

function disableButton() {
  const availability = document.querySelector('.guard-on-duty');
  const bookButton = document.querySelector('.book-button-guard');

  if (availability) {
    bookButton.disabled = true;
    grayButton();
  };
};

export { disableButton };
