//Problem: Hints are shown even when form is valid
//Solution: Hide and show them at appropriate times
var $userpw = $("#userpw");

//Hide hints
$("form span").hide();

function isPasswordValid() {
  return $userpw.val().length > 8;
}

function canSubmit() {
  return isPasswordValid() && arePasswordsMatching();
}

function passwordEvent(){
    //Find out if password is valid  
    if(isPasswordValid()) {
      //Hide hint if valid
      $userpw.next().hide();
    } else {
      //else show hint
      $userpw.next().show();
    }
}

function enableSubmitEvent() {
  $("#submit").prop("disabled", !canSubmit());
}

//When event happens on password input
$userpw.focus(passwordEvent).keyup(passwordEvent).keyup(enableSubmitEvent);

enableSubmitEvent();