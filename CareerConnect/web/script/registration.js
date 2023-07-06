const options = document.querySelectorAll('.option');
const forms = document.querySelectorAll('.form');

options.forEach(option => {
  option.addEventListener('click', () => {
    const selectedForm = document.querySelector(`#${option.dataset.form}-form`);

    // Remove active class from all options and forms
    options.forEach(option => option.classList.remove('active'));
    forms.forEach(form => form.classList.remove('active'));

    // Add active class to clicked option and corresponding form
    option.classList.add('active');
    selectedForm.classList.add('active');
  });
});



