import flatpickr from "flatpickr";
import confirmDatePlugin from 'flatpickr/dist/plugins/confirmDate/confirmDate';


const initFlatpickr = () => {
  const startTimeInput = document.getElementById('interview_start_time');
  const endTimeInput = document.getElementById('interview_end_time');
  const dateInput = document.getElementById('interview_date');
  const dateInputIndex = document.getElementById('_interviews_date');

  if (dateInputIndex) {
    flatpickr(dateInputIndex, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      plugins: [ confirmDatePlugin(
        {
        confirmIcon: "<i class='fa fa-check'></i>",
         confirmText: "",
         showAlways: false,
         theme: "dark"
      })]
    });
  }

  if (dateInput) {
    flatpickr(dateInput, {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
      plugins: [ confirmDatePlugin(
        {
        confirmIcon: "<i class='fa fa-check'></i>",
         confirmText: "",
         showAlways: false,
         theme: "dark"
      })]
    });
  }

  if (startTimeInput) {
    flatpickr(startTimeInput, {
      noCalendar: true,
      enableTime: true,
      dateFormat: "H:i",
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

    flatpickr(endTimeInput, {
      noCalendar: true,
      enableTime: true,
      dateFormat: "H:i",
      time_24hr: true,
      plugins: [ confirmDatePlugin(
          {
        confirmIcon: "<i class='fa fa-check'></i>",
         confirmText: "",
         showAlways: false,
         theme: "dark"
      })]
    });
  };
};

export { initFlatpickr };
