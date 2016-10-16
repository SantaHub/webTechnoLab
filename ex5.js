var lenFinder = function(data){
	var ar = data.split(" ");
	var small=ar[0];
	var large=ar[0];
	for(var a=0;a<ar.length;a++){
	 if(ar[a].length>large.length){
	 	large=ar[a]
	 }
	 if(ar[a].length<small.length){
	 	small=ar[a]
	 }		
	}
	console.log("large :" + large+"\n small :"+small)
}


var forward = function (){
		var data= document.getElementById("dude").innerHTML;
		lenFinder(data);
	}
	var lenFinder = function(data){
		var ar = data.split(" ");
		var small=ar[0];
		var large=ar[0];
		for(var a=0;a<ar.length;a++){
		 if(ar[a].length>large.length){
		 	large=ar[a]
		 }
		 if(ar[a].length<small.length){
		 	small=ar[a]
		 }		
		}
		console.log("large :" + large+"\n small :"+small)
	}
forward();


2---------------------------------------------------------------------------------
var calculate= function(){
	var w=document.getElementById("weight").value;
	var l=document.getElementById("height").value;

	var bmi=w/(l*l);

	document.getElementById('score').innerHTML=bmi;

	var type="";
	if(bmi<18)
		type='Underweight';
	else if(bmi>18 && bmi<25)
		type='Normal';
	else if(bmi>25 && bmi<30)
		type='Overweight'
	else
		type='Obese';
	document.getElementById('type').innerHTML=type;
}

4 ---------------------------------------------------------------------------------


	var convert=function(){
		var f=document.getElementById("from").selectedIndex;
		var t=document.getElementById("to").selectedIndex;

		var amnt=document.getElementById("data").value;

		if(f==0&&t==0){
			console.log("Inidan to US")
			amnt=amnt/60;
		}

		if(f==1&&t==1){
			console.log("us to India")
			amnt=amnt*60;
		}

		document.getElementById("answer").innerHTML=amnt;

	}
5 ---------------------------------------------------------------------------------
