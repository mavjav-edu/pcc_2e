// make email imgs as tall as the height of the line height
for (let emailImg of document.getElementsByClassName('email')) {  
  emailImg.style.lineHeight = parseInt(window.getComputedStyle(emailImg.parentElement).getPropertyValue('line-height')) + 'px';
  //calculate the font size of surrounding text
  emailImg.style.fontSize = parseInt(window.getComputedStyle(emailImg.parentElement).getPropertyValue('font-size')) + 'px';
  emailImg.style.maxHeight = emailImg.style.fontSize;
}
