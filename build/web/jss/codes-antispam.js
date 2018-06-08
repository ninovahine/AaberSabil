function genere_code(nombre_alea)
{
	var img_secure =""; var code_secure="";

	switch (nombre_alea)
	{
		case 1:
			img_secure = "img_sec/01.jpg";
			code_secure = "TU54FP";                                     
			break;
		case 2:
			img_secure = "img_sec/02.jpg";
			code_secure = "QK717R";                    
			break;
		case 3:
			img_secure = "img_sec/03.jpg";
			code_secure = "QNH8K8";                    
			break;
		case 4:
			img_secure = "img_sec/04.jpg";
			code_secure = "ZX263V";
			break;
		case 5:
			img_secure = "img_sec/05.jpg";
			code_secure = "M7L2VH";                    
			break;
		case 6:
			img_secure = "img_sec/06.jpg";
			code_secure = "AJ2L6B";                    
			break;
		default:
			img_secure = "img_sec/01.jpg";
			code_secure = "TU54FP";                    
			break;
	}
	
return img_secure + "|" + code_secure;
}