import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {

 static targets = ["checkin", "checkout"]

  connect() {
    // console.log("total-price-controller connected!");
    // console.log(this.element.dataset.price);
    // const divbill = document.getElementById("bill");
    // console.log(divbill)
    // divbill.style.visibility = "hidden";
  }

  calculatePrice(event) {
    // recupe le prix à la nuit
    const castlePrice = this.element.dataset.price

    // recupere et calcul nombre de jour
    const checkin = new Date(this.checkinTarget.value);
    const checkout = new Date(this.checkoutTarget.value);
    const night = (checkout.getTime() - checkin.getTime())/(1000*60*60*24);

    // const divbill = document.getElementById("bill");
    // console.log(divbill)
    // divbill.style.display = "none";

    const nan = true
    if (isNaN(night)) { nan = false };
    if (nan) {
      const divbill = document.getElementById("bill");
      divbill.style.visibility = "visible";
      // calcule et rempli la ligne prix de la location
      const loc = document.getElementById("loc");
      if (night === 1) {loc.innerHTML = `<h3>${castlePrice} € x ${night} night </h3>`;}
      else {loc.innerHTML = `<h3>${castlePrice} € x ${night} nights </h3>`;}
      const totalLoc = Math.round((night * castlePrice));
      const tloc = document.getElementById("totalloc");
      tloc.innerHTML = `<h3>${totalLoc} €</h3>`;

      // calcule et rempli la ligne cleaning fee
      const clfee = document.getElementById("clfee");
      const fee = Math.round((totalLoc - 200) * 0.1);
      clfee.innerHTML = `<h3>${fee} €</h3>`;

      // calcule et rempli la ligne prix total
      const bill = totalLoc + fee;
      const total = document.getElementById("total");
      total.innerHTML = `<h3>${bill} €</h3>`;

      // envoie le total à l'input TOTAL de simple_form
      const totalinput = document.querySelector("#booking_total_price");
      totalinput.value = bill;
    }
  }
}
