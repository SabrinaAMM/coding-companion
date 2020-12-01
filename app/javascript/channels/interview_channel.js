import consumer from "./consumer";

const initInterviewCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.interviewId;

    consumer.subscriptions.create({ channel: "InterviewChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        messagesContainer.scrollTop = messagesContainer.scrollHeight;
      },
    });
  }
}

export { initInterviewCable };
