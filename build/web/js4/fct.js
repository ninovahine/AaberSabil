function test_nb(valeur){
	var val_ok="1234567890";
	var nb=true;
	var nb_car=0; var indice; var caractere="";
	
	var valeur= valeur.replace(/ /g,"");
	nb_car=valeur.length;
	
	for(indice=0;indice<nb_car;indice++){
		caractere=valeur.substring(indice,indice+1);
		if(val_ok.indexOf(caractere)==-1){
			nb=false;
			break;
		}
	}
	return nb;
}