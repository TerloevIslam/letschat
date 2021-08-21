import consumer from "./consumer"

consumer.subscriptions.create({ channel: "RoomChannel", room_id: 1 }, {
  connected() {
    console.log("connected...")
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    console.log("disconnected...")
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
