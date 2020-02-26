const sendPosition = () => {
  const position = navigator.geolocation.getCurrentPosition(succesPosition);
}


const succesPosition = (pos) => {
  const button = document.querySelector('#location');
  const csrfToken = document.querySelector("[name='csrf-token']").content;

  fetch(button.dataset.path, {
    method: "POST",
    headers: {
      'X-CSRF-Token': csrfToken,
      'Content-Type': 'application/json'
    },
    credentials: "same-origin",
    body: JSON.stringify({
      alert: {
        latitude: pos.coords.latitude,
        longitude : pos.coords.longitude
      }
    })
  })
    .then(response => response.json())
    .then((data) => {
      window.location.href = data.path;
    });
};

const initSendPosition = () => {
  const button = document.querySelector('#location');
  button.addEventListener('click', sendPosition);
};
export { initSendPosition };




