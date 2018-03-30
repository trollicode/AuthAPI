<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://www.gstatic.com/firebasejs/4.10.0/firebase.js"></script>
	<script>
  // Initialize Firebase
  
  	
  	var config = {
    apiKey: "AIzaSyAxBtPDtsJogwakTwM8hJo_7CnB4DAYHvo",
    authDomain: "testmobileverif.firebaseapp.com",
    databaseURL: "https://testmobileverif.firebaseio.com",
    projectId: "testmobileverif",
    storageBucket: "testmobileverif.appspot.com",
    messagingSenderId: "637727376440"
 	 };
  	firebase.initializeApp(config);
	</script><script type="text/javascript">
   
    	initApp = function() {
        firebase.auth().onAuthStateChanged(function(user) {
        	console.log(user);
          if (user) {
            // User is signed in.
            var displayName = user.displayName;
            var email = user.email;
            var emailVerified = user.emailVerified;
            var photoURL = user.photoURL;
            var uid = user.uid;
           var phoneNumber = user.phoneNumber;
            var providerData = user.providerData;
            
            
            user.getIdToken().then(function(accessToken) {
              document.getElementById('sign-in-status').textContent = 'Signed in';
              document.getElementById('sign-in').textContent = 'Sign out';
              document.getElementById('account-details').textContent = JSON.stringify({
                displayName: displayName,
                email: email,
                emailVerified: emailVerified,
                phoneNumber: phoneNumber,
                photoURL: photoURL,
                uid: uid,
                accessToken: accessToken,
                providerData: providerData,
        
              }, null, '  ');
              
            });
          
            window.location = 'thankyou.jsp?number='+ phoneNumber;
          } else {
            // User is signed out.
            
            document.getElementById('sign-in-status').textContent = 'Signed out';
            document.getElementById('sign-in').textContent = 'Sign in';
            document.getElementById('account-details').textContent = 'null';

          }
        }, function(error) {
          console.log(error);
        });
      };
		window.addEventListener('load', function() {
        initApp()
      });
		
    </script>
    
</head>
<body>

</body>
</html>