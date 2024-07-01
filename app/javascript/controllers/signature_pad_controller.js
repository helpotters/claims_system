import { Controller } from "@hotwired/stimulus";
import SignaturePad from "signature_pad";

export default class extends Controller {
  static targets = ["canvas", "input"];

  connect() {
    this.signaturePad = new SignaturePad(this.canvasTarget);
    this.resizeCanvas();

    window.addEventListener("resize", this.resizeCanvas.bind(this));
  }

  disconnect() {
    window.removeEventListener("resize", this.resizeCanvas.bind(this));
  }

  clear() {
    this.signaturePad.clear();
  }

  resizeCanvas() {
    const ratio = Math.max(window.devicePixelRatio || 1, 1);
    this.canvasTarget.width = this.canvasTarget.offsetWidth * ratio;
    this.canvasTarget.height = this.canvasTarget.offsetHeight * ratio;
    this.canvasTarget.getContext("2d").scale(ratio, ratio);
  }

  save(event) {
    if (this.signaturePad.isEmpty()) {
      alert('You must sign to accept the Terms and Conditions');
      event.preventDefault();
    } else {
      this.inputTarget.value = this.signaturePad.toDataURL();
    }
  }
}
