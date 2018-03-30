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
	</script>
    <script src="data.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/2.6.1/firebaseui.css" />
    <script type="text/javascript">
      // FirebaseUI config.
      var uiConfig = {
        signInSuccessUrl: '/success.jsp',
        signInOptions: [
          // Leave the lines as is for the providers you want to offer your users.
         // firebase.auth.GoogleAuthProvider.PROVIDER_ID,
       //   firebase.auth.FacebookAuthProvider.PROVIDER_ID,
       //   firebase.auth.TwitterAuthProvider.PROVIDER_ID,
       //   firebase.auth.GithubAuthProvider.PROVIDER_ID,
      //    firebase.auth.EmailAuthProvider.PROVIDER_ID,
          firebase.auth.PhoneAuthProvider.PROVIDER_ID 
          
        ],
        defaultCountry: 'PK',  
        // Terms of service url.
        tosUrl: '<your-tos-url>'
      };
      
      // Initialize the FirebaseUI Widget using Firebase.
      var ui = new firebaseui.auth.AuthUI(firebase.auth());
      // The start method will wait until the DOM is loaded.
     // ui.start('#firebaseui-auth-container', uiConfig);
      ui.start('#firebaseui-auth-container', {
  
   	signInSuccessUrl: '/success.jsp',
   	signInOptions: [
    {
      provider: firebase.auth.PhoneAuthProvider.PROVIDER_ID,
      recaptchaParameters: {
        type: 'image', // 'audio'
        size: 'normal', // 'invisible' or 'compact'
        badge: 'bottomleft' //' bottomright' or 'inline' applies to invisible.
      },
      defaultCountry: 'AU', // Set default country to the United Kingdom (+44).
      // For prefilling the national number, set defaultNationNumber.
      // This will only be observed if only phone Auth provider is used since
      // for multiple providers, the NASCAR screen will always render first
      // with a 'sign in with phone number' button.
      
      // You can also pass the full phone number string instead of the
      // 'defaultCountry' and 'defaultNationalNumber'. However, in this case,
      // the first country ID that matches the country code will be used to
      // populate the country selector. So for countries that share the same
      // country code, the selected country may not be the expected one.
      // In that case, pass the 'defaultCountry' instead to ensure the exact
      // country is selected. The 'defaultCountry' and 'defaultNationaNumber'
      // will always have higher priority than 'loginHint' which will be ignored
      // in their favor. In this case, the default country will be 'GB' even
      // though 'loginHint' specified the country code as '+1'.
      loginHint: '11234567890'
    }
  ]
});

      
    </script>



</head>
<body>
	<%@ page import="java.util.Date"  %>
	<%@ page import="java.util.TimeZone"  %>
	<%@ page import="java.text.SimpleDateFormat"  %>
<%

//Date date = new Date();
//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
//dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
//long code = Long.parseLong(dateFormat.format(date));
//out.println("Your Current Time " + code);
		//long xamCode = Long.parseLong(request.getParameter("code"));
		//long code = Long.parseLong(dtf.format(now));
		//if(xamCode <= code && xamCode+30 >= code){
		 %>   <div id="firebaseui-auth-container"></div>
		<% 	
			
		//}else{
			
		//}
      %>
	 	
	 
	
</body>
</html>