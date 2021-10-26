import {Buffer} from 'buffer';

// make email imgs as tall as the height of the line height
for (let emailImg of document.getElementsByClassName('email')) {  
  emailImg.style.lineHeight = parseInt(window.getComputedStyle(emailImg.parentElement).getPropertyValue('line-height')) + 'px';
  //calculate the font size of surrounding text
  emailImg.style.fontSize = parseInt(window.getComputedStyle(emailImg.parentElement).getPropertyValue('font-size')) + 'px';
  emailImg.style.maxHeight = emailImg.style.fontSize;
}

function svgToPng(svg, callback) {
  var svgContent = null;
  var svgSize = null;
  //check if svg is a path string
  if (typeof svg === 'string') {
    //get svg element
    var client = new XMLHttpRequest();
    client.open('GET', svg);
    client.onreadystatechange = function() {
      svgContent = client.responseText;
    }
    client.send();
    //calculate SVG size in pixels
      //create invisible SVG
      //append SVG to invisible DIV
    var div = document.createElement('div');
    div.innerHTML = svgContent;
    document.body.appendChild(div);
    //get SVG size
    svgSize = {
      width: div.clientWidth,
      height: div.clientHeight
    };
    //remove DIV
    document.body.removeChild(div);
  } else if (svg.nodeType === 1) {  //checks that svg is an element
    svgContent = (new XMLSerializer()).serializeToString(svg);
    svgSize = svg.getBoundingClientRect();
  }

  var canvas = document.createElement("canvas");
  canvas.width = svgSize.width;
  canvas.height = svgSize.height;
  var ctx = canvas.getContext("2d");
  //Encode URI component for svgContent
  //Compute new string in which hexadecimal escape sequences are replaced with the character that it represents without using deprecated `btoa` or `unescape` functions
  var svgContentEncoded = (encodeURIComponent(svgContent)).replace(/\%([0-9A-F]{2})/g, function(match, p1) {
      return String.fromCharCode('0x' + p1);
  });
  var svgBase64 = Buffer.from(svgContentEncoded, 'utf8').toString('base64');
  var img = document.createElement("img");
  img.setAttribute("src", "data:image/svg+xml;base64," + svgBase64);

  img.onload = function() {
    ctx.drawImage(img, 0, 0);
    callback(canvas.toDataURL("image/png"));
  };
}

//add links to all .cell > img elements
for (let cell of document.getElementsByClassName('cell')) {
  for (let img of cell.getElementsByTagName('img')) {
    //create a png of the svg
    svgToPng(img, function(png) {
      // the link downloads the base64 encoded image 
      var link = document.createElement('a');
      link.href = png;
      link.download = img.alt;
      link.innerHTML = img.alt;
      img.parentElement.appendChild(link);
    });
  }
}
