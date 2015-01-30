function loginBtn(){
	var userEmail = $(".userEmail").val();
	var password = $(".password").val();
	$.post("../user_login.action", {
		userEmail : userEmail,
		password : password
	}, function(data, textStatus) {
		
	});
}
