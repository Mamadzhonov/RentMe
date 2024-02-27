// Load the page after 5 sec
document.getElementById('form-new').addEventListener('submit', function (event) {
  // Prevent the default form submission
  event.preventDefault();

  // Delay form submission for 5 seconds
  setTimeout(function () {
      document.getElementById('form-new').submit(); // Submit the form
  }, 1000); // 5000 milliseconds = 5 seconds
});

