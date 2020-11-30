import flatpickr from "flatpickr";
import confirmDatePlugin from 'flatpickr/dist/plugins/confirmDate/confirmDate';


const initFlatpickr = () => {
const startTimeInput = document.getElementById('interview_start_time');
const endTimeInput = document.getElementById('interview_end_time');


if (startTimeInput) {
const unavailableDates = JSON.parse(document.querySelector('#interview-dates').dataset.unavailable)
endTimeInput.disabled = true

flatpickr(startTimeInput, {
  minDate: Date.now(),
  disable: unavailableDates,
  enableTime: true,
  altInput: true,
  altFormat: "F j, Y | H:i",
  dateFormat: "d-m-Y H:i",
  time_24hr: true,
  plugins: [ confirmDatePlugin(
    { 
  confirmIcon: "<i class='fa fa-check'></i>", 
   confirmText: "",
   showAlways: false,
   theme: "dark"
})]
});

console.log('im in the file')

startTimeInput.addEventListener("change", (e) => {
  if (startTimeInput != "") {
    endTimeInput.disabled = false
  }
  flatpickr(endTimeInput, {
    minDate: Date.now(),
    disable: unavailableDates,
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y | H:i",
    dateFormat: "d-m-Y H:i",
    time_24hr: true,
    plugins: [ confirmDatePlugin(
        { 
      confirmIcon: "<i class='fa fa-check'></i>", 
       confirmText: "",
       showAlways: false,
       theme: "dark"
    })]

    
    });
  })
};
};

export { initFlatpickr };