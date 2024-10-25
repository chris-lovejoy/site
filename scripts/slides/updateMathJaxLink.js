// NOTE: only run this once, as otherwise leads to wrong import

const fs = require('fs');

const filePaths = [
  './clinical-ai-paper/index.html',
  // './cnn-images/index.html',
  // './data-science-healthcare/index.html',
  // './data-science-pipeline/index.html',
  // './ds-crash-course/index.html',
  // './how-machine-learns/index.html',
  // './imperial-course-outline/index.html',
  // './key-considerations/index.html',
  // './neural-networks/index.html',
  // './python-principles/index.html',
  // './sequential/index.html',
  // './medical-pdf-extraction/index.html',
];

function updateMathjaxLink(filePath) {
  // Read the HTML file
  fs.readFile(filePath, 'utf8', (err, data) => {
    if (err) {
      console.error('Error reading file:', err);
      return;
    }

    // Replace the old path with the new path
    const updatedData = data.replace(
      "plugin/math/mathjax/tex-mml-chtml.js",
      "../src/plugin/math/mathjax/tex-mml-chtml.js"
    );

    // Write the updated HTML back to the file
    fs.writeFile(filePath, updatedData, 'utf8', (err) => {
      if (err) {
        console.error('Error writing file:', err);
        return;
      }
      console.log('Updated mathjax link successfully.');
    });
  });
}



filePaths.forEach((filePath) => {
    updateMathjaxLink(filePath);
  });
  