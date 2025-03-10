import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="restaurant"
export default class extends Controller {
  static targets = ["link"];

  connect() {
    console.log(this.element);
  }

  createRestaurant(e) {
    e.preventDefault();
    const form = new FormData(e.currentTarget);
    const url = e.currentTarget.action;

    fetch(url, {
      headers: { Accept: "text/plain" },
      method: "POST",
      body: form,
    })
      .then((response) => response.text())
      .then((data) => {
        this.linkTarget.innerText = data;
      });
  }
}
