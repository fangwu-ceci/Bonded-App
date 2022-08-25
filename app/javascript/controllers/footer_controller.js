import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footer"
export default class extends Controller {
  connect() {
    console.log("Hello from footer controller")
  }

  // stickFooter() {
  //   if (window.scrollY >= window.innerHeight) {
  //     this.element.classList.add("footer-body-fixed")
  //   } else {
  //     this.element.classList.remove("footer-body-fixed")
  //   }
  // }
}
