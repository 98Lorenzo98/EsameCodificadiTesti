$(document).ready(function () {
  clicked = 0;

  $("img[src='img/Pro2_10R.jpg']").hide();


  $("img[src='img/Pro2_11.jpg']").on("mouseleave", function (e) {
    current = $(e.target);

    $(current).animate(
      {
        opacity: "1",
        width: "65%",
      },
      {
        duration: "slow",
      }
    );
  });   


  /*Therefore, "e" is just a parameter of your function and you need an "e" in you function() 
  to receive the "event object" then perform e.preventDefault(). This is also the reason why you can change the "e" to any words that is not reserved by js.
  just an object containing information about the EVENT which has just occured. if it is 'click', then the object will contain about the click, if it is 'submit',
   then the object will contain about the submit, and they are typically found in addEventListener.
   Pertanto, "e" è solo un parametro della tua funzione e hai bisogno di una "e" nella tua funzione()
  per ricevere "l'oggetto evento", quindi eseguire e.preventDefault(). Questo è anche il motivo per cui puoi cambiare la "e" in qualsiasi parola non riservata da js.
  solo un oggetto contenente informazioni sull'EVENTO che si è appena verificato. se è "clic", l'oggetto conterrà informazioni sul clic, se è "invia",
   quindi l'oggetto conterrà informazioni sull'invio e si trovano in genere in addEventListener.
clickMe.addEventListener('click', e => {
    console.log(e)
}
  
  */
  $("#girap10").on("click", function (e) {
    e.preventDefault();

    clicked += 1;

    if (clicked % 2 == 1) {
      $("img[src='img/Pro2_10.jpg']").hide();
      $("img[src='img/Pro2_10R.jpg']").fadeIn();
      $("#girap10").text("Mostra fronte");
    }

    if (clicked % 2 == 0) {
      $("img[src='img/Pro2_10.jpg']").fadeIn();
      $("img[src='img/Pro2_10R.jpg']").hide();
      $("#girap10").text("Mostra retro");
    }
  });


});


  
