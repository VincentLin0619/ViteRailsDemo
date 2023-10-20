import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  toggle() {
    const input = this.element.querySelector("#password-field");
    const inputLabel = this.element.querySelector("#password-label");
    if (input.type === "password") {
      input.type = "text";
      inputLabel.textContent = "Hide";
    } else {
      input.type = "password";
      inputLabel.textContent = "Show";
    }
  }
}
