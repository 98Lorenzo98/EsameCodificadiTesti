$(document).ready(function () {
  clickterm = 0;
  clickreg = 0;
  clickesling = 0;
  clickabbr = 0;
  clickdel = 0;
  clickadd = 0;
  button = false;

/*colori presi dalle info delle prolusioni*/

  function control(click, vettore, color) {

    if (click % 2 == 0) {
      for (i = 0; i <= vettore.length; i++) {
        vettore[i].style.background = "none";
      }
    }

    if (click % 2 == 1) {
      for (i = 0; i <= vettore.length; i++) {
        vettore[i].style.background = color;
      }
    }
  }

  $("#term").on("click", function () {
    clickterm += 1;

    vect = $(".term");

    control(clickterm, vect, "yellow");
  });

  $("reg").hide();

  $("#reg").on("click", function () {
    clickreg += 1;
    button= true;

    $("reg").fadeIn();

    vect = $("reg");

    if (clickreg % 2 == 1) {
      $("orig").hide();
      $("reg").fadeIn();
    }

    if (clickreg % 2 == 0) {
      $("orig").fadeIn();
      $("reg").hide();
    }

    control(clickreg, vect, "red");
  });


  $("#esling").each(function () {
    $(this).on("click", function (e) {
      clickesling += 1;

      vect = $("mentioned");

      control(clickesling, vect, "lightblue");
    });
  });


  $('#gap').click(function () {
    if ($(this).prop("checked") == true) {
      gaps = $(".gap");

      for (i = 0; i <= gaps.length; i++) {
        gaps[i].style.background = "green";
      }
    } else if ($(this).prop("checked") == false) {
      for (i = 0; i <= gaps.length; i++) {
        gaps[i].style.background = "none";
      }
    }
  }); 


  $(".expan").hide();

  $("#abbreviazioni").on("click", function () {
    clickabbr += 1;

    if (clickabbr % 2 == 1) {
      $(".abbr").css("font-weight", "bold");
      $(".expan").fadeIn();
    }

    if (clickabbr % 2 == 0) {
      $(".abbr").css("font-weight", "normal");
      $(".expan").fadeOut();
    }
  });


  $('orig').on("mouseover",function () {
    
    $(this).css("background", "red");
    $(this).next().show();
    $(this).hide();
    $(this).next().css("background", "red");
    button = false;

  });


  $('.abbr').on("mouseover",function () {
    
    $(this).css("font-weight", "bold");
    $(this).next().fadeIn();

  });

  $('.abbr').on("mouseleave", function () {
  
    $(this).next().hide();
    $(this).css("font-weight", '');

  });


  $('reg').on("mouseleave",function () {
    
    if(!button) {
    $('orig').css("background", "none");
    $('orig').show();
    $('reg').hide();
    $('reg').css("background", "none");

    }

  });


  $("del").hide();

  $("#del").on("click", () => {
    clickdel += 1;

    if (clickdel % 2 == 1) {
      $("del").fadeIn();
      $(".gaps").fadeIn();

 }
    if (clickdel % 2 == 0) {
      $("del").fadeOut();
      $(".gaps").fadeOut();
    }
  }); 


   $("add").hide();

  $('#add').on("click",function () {

    clickadd+=1;

    if(clickadd % 2 == 1) {
    
    $("add").fadeIn();

    }

    if(clickadd % 2 == 0) {

      $("add").fadeOut();

    }
    

  });


});
