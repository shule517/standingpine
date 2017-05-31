//= require froala_editor.min.js
//= require plugins/align.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/colors.min.js
//= require plugins/entities.min.js
//= require plugins/file.min.js
//= require plugins/image.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/quote.min.js
//= require plugins/save.min.js
//= require plugins/url.min.js
//= require plugins/font_family.min.js

$('textarea').froalaEditor({
  theme: 'custom',
  language: 'ja',
  heightMin: 250,
  pastePlain: true,
  toolbarButtons: [
    'bold',
    'italic',
    'underline',
    'strikeThrough',
    '|',
    'color',
    'outdent',
    'indent',
    '|',
    'insertImage',
    'insertLink',
    'clearFormatting',
    'html'
  ],
  imageAltButtons: ['imageBack'],
  imageUploadURL: '/media/upload.json',
  imageUploadMethod: 'POST',
  imageMaxSize: 1024 * 1024 * 5,
  imageInsertButtons: ['imageUpload', 'imageByURL'],
  imageDefaultWidth: 300,
  imageDefaultAlign: 'left',
  imageAllowedTypes: ['jpeg', 'jpg', 'png'],
  imageEditButtons: ['imageAlign', 'imageAlt', 'imageSize', 'imageRemove', '-', 'imageLink', 'linkOpen', 'linkEdit', 'linkRemove'],
  fileUploadURL: '/pictures/upload.json',
  fileUploadMethod: 'POST',
  fileMaxSize: 1024 * 1024 * 5,
});
