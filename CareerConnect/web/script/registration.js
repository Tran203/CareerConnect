
const options = document.querySelectorAll('.option');
const forms = document.querySelectorAll('.form');

options.forEach(option => {
  option.addEventListener('click', () => {
    // Remove active class from all options and forms
    options.forEach(option => option.classList.remove('active'));
    forms.forEach(form => form.classList.remove('active'));

    // Add active class to clicked option and corresponding form
    const formId = option.getAttribute('data-form');
    const form = document.getElementById(formId);
    option.classList.add('active');
    form.classList.add('active');
  });
});



