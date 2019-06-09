function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

ready(function () {
  var editor = CodeMirror.fromTextArea(document.getElementById('code-one'), {
    lineNumbers: true,
    theme: 'ambiance',
    mode:  'javascript'
  });

  editor.display.wrapper.style.height = '300px';
  editor.display.wrapper.style.fontSize = '1.1em';
  editor.refresh();

  baguetteBox.run('.gallery');
});
