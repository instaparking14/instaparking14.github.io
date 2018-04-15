
   // Initialize Firebase

   var config = {
      apiKey: "AIzaSyBo5M0vUbOPWbzGMXsP4UXTKtMMzTz0hkk",
      authDomain: "crimsonhacks-d61d8.firebaseapp.com",
      databaseURL: "https://crimsonhacks-d61d8.firebaseio.com",
      storageBucket: "crimsonhacks-d61d8.appspot.com",
   };
  firebase.initializeApp(config);

  var firebaseRef = firebase.database().ref( 'Parking A1');

  firebaseRef.on("value",function(snapshot){document.getElementById("r1").innerHTML=snapshot.val()});

  var firebaseRef = firebase.database().ref( 'Parking A4');

  firebaseRef.on("value",function(snapshot){document.getElementById("r4").innerHTML=snapshot.val()});

  var firebaseRef = firebase.database().ref();

  firebaseRef.child("Random").set("This is a random value");
