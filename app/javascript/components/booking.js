import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
 // First we define two variables that are going to grab our inputs field. You can check the ids of the inputs with the Chrome inspector.
const startDateInput = document.getElementById('consultation_checkin');
const endDateInput = document.getElementById('consultation_checkout');

// Check that the query selector id matches the one you put around your form.
if (startDateInput) {
const unavailableDates = JSON.parse(document.querySelector('#specialist-consultation-dates').dataset.unavailable)
endDateInput.disabled = true

flatpickr(startDateInput, {
  minDate: "today",
  disable: unavailableDates,
  dateFormat: "Y-m-d",
});

console.log('im in the file')

startDateInput.addEventListener("change", (e) => {
  if (startDateInput != "") {
    endDateInput.disabled = false
  }
  flatpickr(endDateInput, {
    minDate: e.target.value,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
    });
  })
};
}

export { toggleDateInputs }