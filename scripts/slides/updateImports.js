// TODO: add the ability to delete the revealNotes imports too in this code.
// TODO: add automatic deletion of the initial dist, plugin and css files within each folder
// TODO: update so only a single function call required (not separate files)


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

const importsToUpdate = [
    {
      originalPath: 'dist/reveal.css',
      newPath: '../src/dist/reveal.css',
    },
    {
      originalPath: 'dist/theme/night-custom.css',
      newPath: '../src/dist/theme/night-custom.css',
    },
    {
      originalPath: 'plugin/highlight/zenburn.css',
      newPath: '../src/plugin/highlight/zenburn.css',
    },
    {
      originalPath: 'css/layout.css',
      newPath: '../src/css/layout.css',
    },
    {
      originalPath: 'plugin/customcontrols/style.css',
      newPath: '../src/plugin/customcontrols/style.css',
    },
    {
      originalPath: 'plugin/reveal-pointer/pointer.css',
      newPath: '../src/plugin/reveal-pointer/pointer.css',
    },
    {
      originalPath: 'dist/fontawesome/all.min.js',
      newPath: '../src/dist/fontawesome/all.min.js',
    },
    {
      originalPath: 'dist/reveal.js',
      newPath: '../src/dist/reveal.js',
    },
    {
      originalPath: 'plugin/markdown/markdown.js',
      newPath: '../src/plugin/markdown/markdown.js',
    },
    {
      originalPath: 'plugin/highlight/highlight.js',
      newPath: '../src/plugin/highlight/highlight.js',
    },
    {
      originalPath: 'plugin/zoom/zoom.js',
      newPath: '../src/plugin/zoom/zoom.js',
    },
    {
      originalPath: 'plugin/math/math.js',
      newPath: '../src/plugin/math/math.js',
    },
    {
      originalPath: 'plugin/mermaid/mermaid.js',
      newPath: '../src/plugin/mermaid/mermaid.js',
    },
    {
      originalPath: 'plugin/chart/chart.min.js',
      newPath: '../src/plugin/chart/chart.min.js',
    },
    {
      originalPath: 'plugin/chart/plugin.js',
      newPath: '../src/plugin/chart/plugin.js',
    },
    {
      originalPath: 'plugin/menu/menu.js',
      newPath: '../src/plugin/menu/menu.js',
    },
    {
      originalPath: 'plugin/customcontrols/plugin.js',
      newPath: '../src/plugin/customcontrols/plugin.js',
    },
    {
      originalPath: 'plugin/reveal-pointer/pointer.js',
      newPath: '../src/plugin/reveal-pointer/pointer.js',
    },
    {
      originalPath: 'plugin/math/mathjax/tex-mml-chtml.js',
      newPath: '../src/plugin/math/mathjax/tex-mml-chtml.js',
      },
  ];

function updateImports(filePath, importsToUpdate) {
  fs.readFile(filePath, 'utf8', (err, data) => {
    if (err) {
      console.error(err);
      return;
    }

    let updatedData = data;
    importsToUpdate.forEach((importToUpdate) => {
      const { originalPath, newPath } = importToUpdate;
      const regex = new RegExp(`"${originalPath}"`, 'g');
      updatedData = updatedData.replace(regex, `"${newPath}"`);
    });

    fs.writeFile(filePath, updatedData, 'utf8', (writeErr) => {
      if (writeErr) {
        console.error(writeErr);
        return;
      }
      console.log(`Imports updated successfully for ${filePath}`);
    });
  });
}

filePaths.forEach((filePath) => {
  updateImports(filePath, importsToUpdate);
});
