
    $.ajax({
        type: "POST",
        url: "Lista_De_Funcionarios.aspx/retornaFuncionarios",
        contentType: "application/json; charset=utf-8",
        dataType: "JSON",

        success: function (resposta) {
            montaTabela(JSON.parse(resposta.d));
            RegistrarEventoEditar();
        }
    });


function montaTabela(dados){
    dados.forEach((funcionario) => {
        var funcionarioTr = montaTr(funcionario);
        var tabela = document.querySelector('#tabelaDeFuncionarios');
        tabela.appendChild(funcionarioTr);
    });
}

function montaTr(funcionario){
	
    var funcionarioTr = document.createElement("tr");
    funcionarioTr.classList.add("funcionario");

 	funcionarioTr.appendChild(montaTh(funcionario.cod,"cod"));
 	funcionarioTr.appendChild(montaTd(funcionario.nome,"nome"));
 	funcionarioTr.appendChild(montaTd(funcionario.cpf,"cpf"));
 	funcionarioTr.appendChild(montaTd(funcionario.cargo,"cargo"));

	return funcionarioTr;
}


function montaTh(dado,classe){
	var th = document.createElement("th");
    th.textContent = dado;
    th.classList.add(classe);
	th.scope = "row";
	return th;
}

function montaTd(dado, classe){
	var td = document.createElement("td");
    td.textContent = dado;
    td.classList.add(classe);
	return td;
}

function RegistrarEventoEditar() {

    var linhas = document.querySelectorAll("tr");
    Array.from(linhas).forEach((linha) => {

        linha.addEventListener("dblclick", function (event) {

            location.href = `/DetalhesFuncionario.aspx?Id=${linha.children[2].innerHTML}`;    

        });

    });

}
