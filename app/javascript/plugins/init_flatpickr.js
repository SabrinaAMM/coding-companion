import flatpickr from "flatpickr";
import confirmDatePlugin from 'flatpickr/dist/plugins/confirmDate/confirmDate';


const initFlatpickr = () => {
  const startTimeInput = document.getElementById('interview_start_time');
  const endTimeInput = document.getElementById('interview_end_time');


  if (startTimeInput) {
    const unavailableDates = JSON.parse(document.querySelector('#interview-dates').dataset.unavailable)


    flatpickr(startTimeInput, {
      disable: unavailableDates,
      noCalendar: true,
      enableTime: true,
      dateFormat: "H:i",
      time_24hr: true
    });

    console.log('im in the file')

    flatpickr(endTimeInput, {
      noCalendar: true,
      enableTime: true,
      dateFormat: "H:i",
      time_24hr: true
      });
  };
};

export { initFlatpickr };
