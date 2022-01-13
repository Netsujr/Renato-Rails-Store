document.addEventListener("turbolinks:load", function () {

  const notification = document.querySelector('.global-notification');
  // console.log("code reaches here");

  if (notification) {
    window.setTimeout(function () {
      notification.style.display = 'none';
    }, 3000);
  }
});
