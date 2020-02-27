const addIndicatif = () => {
  const phoneNumberForm = document.querySelector(".phone-number > .form-group.string.required.contact_phone_number > .form-control")

  if(phoneNumberForm) {
    const parent = phoneNumberForm.parentNode;
    const wrapper = document.createElement('div');
    // set the wrapper as child (instead of the element)
    parent.replaceChild(wrapper, phoneNumberForm);
    // set element as child of wrapper
    wrapper.appendChild(phoneNumberForm);
    phoneNumberForm.insertAdjacentHTML('beforebegin', '<p>+ 41</p>');
  }
}

export { addIndicatif };





