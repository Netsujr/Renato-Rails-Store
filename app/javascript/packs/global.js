document.addEventListener("turbolinks:load", function () {

  const notification = document.querySelector('.global-notification');
  // console.log("code reaches here");

  if (notification) {
    window.setTimeout(function () {
      notification.style.display = 'none';
    }, 3000);
  }
});


// function showImage(input) {
//   if (input.files && input.files[0]) {
//     var reader = new FileReader();

//     reader.onload = function (e) {
//       $('#uploaded_image')
//         .attr('src', e.target.result)
//         .width(150)
//         .height(200);
//     };

//     reader.readAsDataURL(input.files[0]);
//   }
// }
