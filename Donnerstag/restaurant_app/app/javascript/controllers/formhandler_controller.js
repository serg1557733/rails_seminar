import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="formhandler"
export default class extends Controller {
  static targets = ["formwrap"];

  static values = {
    chef: String,
  };

  connect() {
    console.log(this.formwrapTarget);
    console.log(this.element);
    console.log(this.chefValue);
  }

  toggler(e) {
    const formTarget = this.formwrapTarget;
    e.currentTarget.innerText = this.chefValue;
    if (formTarget.classList.contains("d-none")) {
      this.formwrapTarget.classList.remove("d-none");
    } else {
      this.formwrapTarget.classList.add("d-none");
    }
  }
}
