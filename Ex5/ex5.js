// https://youtu.be/88pwzkPOSuA


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

3 ---------------------------------------------------------------------------------

	var grow = function(){
		document.getElementById("garden").innerHTML="";

		var rows= document.getElementById("rows").value;
		var col= document.getElementById("columns").value;

		var ac=0,oc=0;
		var slots= rows*col;

		for(var i=0;i<rows;i++){
			for(var j=0;j<col;j++){
				var choice= Math.round(Math.random()+1)

				if(choice==1 && ac<(slots/2)){
					document.getElementById("garden").innerHTML += "<img src= Apple.jpg width =100px height= 100px>"
					ac++;
				}
				else if(choice==2 && oc<(slots/2)){
					document.getElementById("garden").innerHTML += "<img src= orange.jpg width =100px height= 100px>"
					oc++;
				}
				else if(choice==2 && ac<=(slots/2)){
					document.getElementById("garden").innerHTML += "<img src= Apple.jpg width =100px height= 100px>"
					ac++
				}
				else {
					document.getElementById("garden").innerHTML += "<img src= orange.jpg width =100px height= 100px>"
					oc++;
				}
			}

			document.getElementById("garden").innerHTML += "<br/>"
		}
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

var hn=0,tn=0;
	var flip=function(){
		if(document.getElementById('coin').src=="file:///home/austin/Documents/Learn/karunya/webLab/heads.jpg"){
			document.getElementById('coin').src="tail.jpg";
			tn++;
		}
		else{
			document.getElementById('coin').src="heads.jpg";
			console.log(document.getElementById('coin').src)
			hn++;

		}
		document.getElementById("num_tails").innerHTML=tn;
		document.getElementById("num_heads").innerHTML=hn;

	}

6---------------------------------------------------------------------------------

	var cal=function(){
		var cost=(document.getElementById("small").value*100)+(document.getElementById("medium").value*200)+(document.getElementById("large").value*400);
		cost=cost*1;
		console.log(typeof(cost),cost);
		cost=cost+(cost*0.09);
		cost= cost+(cost*(document.querySelector('input[name="tip"]:checked').value/100));
		document.getElementById("price").innerHTML=cost;
		
	}
3 ---------------------------------------------------------------------------------

