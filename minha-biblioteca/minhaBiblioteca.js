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

function reservaLivro(){
	var emprestimo = document.querySelector("#emprestimo").value;
	var devolucao = document.querySelector("#devolucao").value;
	var cod_livro = document.querySelector("#cod_livro").value;
	var cod_usuario = document.querySelector("#cod_usuario").value;

	var myIds = ['emprestimo', 'devolucao', 'cod_livro','cod_usuario' ];
	clearImputs(myIds);

	const params = "&emprestimo=" + emprestimo + "&devolucao=" + devolucao + "&cod_livro=" + cod_livro + "&cod_usuario=" + cod_usuario;
	const requestUrl = "minhaBiblioteca.php?action=reservar" + params ;

	ajaxCall(requestUrl, imprimirReservaCallback)
}

function clearImputs(ids){
	if (ids.length <= 0 ){
		alert('ids can not be null or less that or equal 0.');
		return;
	}
	
	for (var key in ids) {
		document.querySelector(`#${ids[key]}`).value = '';
	}
}

function setQueryOutputs(responseText) {
	document.querySelector('#tab-post').innerHTML = responseText;
}

function imprimirReservaCallback (responseText) {
	console.log("later we print responseText.");
}
