import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="formhandler"
export default class extends Controller {

  static targets = ["formwrap"]

  static values = { chef: String }
  connect() {
    console.log(this.element)
    console.log(this.chefValue)
  }

  toggler(){
    console.log('click')
  }
}
