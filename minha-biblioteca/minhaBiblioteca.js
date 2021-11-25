function ajaxCall (requestUrl, callback)
{
	var httpRequest = new XMLHttpRequest;    
	httpRequest.onreadystatechange = function (){
		if (httpRequest.readyState === 4 && httpRequest.status === 200 ) {
			callback(httpRequest.responseText);
		}
	};
	
	httpRequest.open(method= 'GET', url = requestUrl);
	httpRequest.send();
}

function inicializa()
{
	//ajaxCall("minhaBiblioteca.php?action=recuperaLivros", inicializaSelecaoCidades);
}

function pesquisarLivro() 
{
	console.log("inside pesquisarLivros()");

	var titulo = document.querySelector('#titulo').value;
	var autor = document.querySelector('#autor').value;
	var ano = document.querySelector('#ano_publicacao').value;

	document.querySelector('#titulo').value = '';
	document.querySelector('#autor').value = '';
	document.querySelector('#ano_publicacao').value = '';

	const parms = "&titulo="+ titulo +"&autor="+ autor + "&ano=" + ano ;
	const requestUrl = "minhaBiblioteca.php?action=S" + parms ;

	ajaxCall(requestUrl , setQueryOutputs);
}

function setQueryOutputs(responseText) {
	document.querySelector('#tab-post').innerHTML = responseText;
}


