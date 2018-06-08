function saisie(txt_defaut,nom_controle){
	
	if(document.getElementById(nom_controle).value==txt_defaut)
		document.getElementById(nom_controle).value=='';
	
}


function retablir(txt_defaut,nom_controle){
	
	if(document.getElementById(nom_controle).value=='')
		document.getElementById(nom_controle).value==txt_defaut;
	
}



 
function mev(txt_defaut,nom_controle){
	

	var longueur = document.getElementById(nom_controle).value.length;
	
	if(nom_controle=="Email"){
		if(document.getElementById(nom_controle).value.indexOf("@")==-1 || document.getElementById(nom_controle).value.indexOf(".")==-1){
			document.getElementById(nom_controle).style.border=' #CC3300 2px solid';
				document.getElementById("message").innerText="Votre mail ne semble pas correct";
				b_mail_insc=false;
		}
		else{
			document.getElementById("message").innerText=" ";
			document.getElementById(nom_controle).style.border=' #333 1px solid';
		}
	}
	
	if(nom_controle=="Email"){
		if(document.getElementById(nom_controle).value.indexOf("@")==-1 || document.getElementById(nom_controle).value.indexOf(".")==-1){
			document.getElementById(nom_controle).style.border=' #CC3300 2px solid';
				document.getElementById("message").innerText="Votre mail ne semble pas correct";
				b_mail_insc=false;
		}
		else{
			document.getElementById("message").innerText=" ";
			document.getElementById(nom_controle).style.border=' #333 1px solid';
		}
	}
	
	else if(longueur< 4 || document.getElementById(nom_controle).value==txt_defaut){
		
		document.getElementById(nom_controle).style.border=' #CC3300 2px solid'
			
			switch(nom_controle){
				case "NOM":
					b_nom=false;
					break;
				case "Prenom": 
					b_prenom=false;	
					break;
				case "Email": 
					b_mail_insc=false;	
					break;
				case "Password": 
					b_mp_inscr =false;	
					break;
				case "Telephone": 
					b_tel=false;	
					break;
				case "Day": 
					b_DD=false;	
					break;
				case "Mois": 
					b_MM=false;	
					break;
				case "Annee": 
					b_YYYY=false;	
					break;
				
			}
	}
	else{
		
		document.getElementById(nom_controle).style.border=' #333 1px solid'
			switch(nom_controle){
			case "NOM":
				b_nom=true;
				break;
			case "Prenom": 
				b_prenom=true;	
				break;
			}
		
	}
	
}














