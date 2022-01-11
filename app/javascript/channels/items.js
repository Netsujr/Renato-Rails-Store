document.addEventListener('turbolinks:load'), function () {

  const itemImage = document.querySelector('.item_image');

  function handleFileSelect(event) {
    const files = event.target.files;

    for (let i = 0; f; f = files[i], i++) {
      if (!f.type.match('image.**')) {
        continue;
      }
      const reader = new FileReader();

      reader.onload = (function (theFile) {
        return function (e) {
          const span = document.createElement('span');
          span.innerHTML = ['<img class="item-preview-thumb" src="', e.target.result,
        '" title="', escape(theFile.name), '"/>'].join('');
        document.getElementById('list').insertBefore(span, null);
        };
      })(f);
      reader.readAsDataURL(f);
    }
  }

  if (itemImage) {
    this.addEventListener('change', handleFileSelect, false);
  }
}
