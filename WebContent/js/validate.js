/* 	function login() {
		var str1 = document.getElementById("uname").value;
		var str2 = document.getElementById("password").value;
		out.print(str1);
		if (str1 == "admin" && str2 == "admin") {
			window.location.href="Company.jsp";
		} else
			document.getElementById("validation").innerHTML = "Incorrect username or password entered! Please try again!";

	} */
function validateForm() {
	var x = document.forms["myForm"]["uname"].value;
	var y = document.forms["myForm"]["password"].value;
	if (x == "admin" && y == "admin") {
		return true;
	}
	else if (x == "" || y == "") {
		alert("Name must be filled out");
		return false;
	}
}
function reset() {
	var str1 = document.getElementById("password").value;
	document.getElementById("uname").value = "";
	document.getElementById("password").value = "";
	document.getElementById("validation").innerHTML = "";
}