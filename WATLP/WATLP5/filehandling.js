const fs = require('fs');

// Set path to our file
const filePath = './example.txt';

// 1. Create and write a file
fs.writeFile(filePath, 'This is the initial content of the file.\n', (err) => {
  if (err) {
    return console.error('Error creating/writing file\n', err.message);
  }
  console.log(':: File created and written successfully.');

  // 2. Append to the file
  fs.appendFile(filePath, 'Appended text to the file.', (err) => {
    if (err) {
      return console.error('Error appending to the file\n', err.message);
    }
    console.log(':: Content appended successfully.');

    // 3. Read the file
    fs.readFile(filePath, 'utf8', (err, data) => {
      if (err) {
        return console.error('Error reading file\n', err.message);
      }
      console.log(':: --- Beginning of file content ---');
      console.log(data)
      console.log(':: --- End of file content ---');

      // 4. Delete the file
      fs.unlink(filePath, (err) => {
        if (err) {
          return console.error('Error deleting file\n', err.message);
        }
        console.log(':: File deleted successfully.');
      });
    });
  });
});
