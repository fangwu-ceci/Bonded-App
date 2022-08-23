import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log("hello from the navbar controller")
  }

  stickNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("navbar-lewagon-sticky")
    } else {
      this.element.classList.remove("navbar-lewagon-sticky")
    }
 }
}
