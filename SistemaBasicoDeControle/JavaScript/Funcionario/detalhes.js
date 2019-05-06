

window.onload = () => {
    $.ajax({
        type: "POST",
        url: "DetalhesFuncionario.aspx/retornaFuncionario",
        contentType: "application/json; charset=utf-8",
        dataType: "JSON",

        success: function (resposta) {
            preencheCampos(JSON.parse(resposta.d));
            mudaStatusDosInputsParaDesabilitado();

            var btnAlterar = document.getElementById("btnAlterar");

            btnAlterar.addEventListener("click", function () {
                mudaStatusDosInputsParaHabilitado();
            });



        }
    });


    


 

    

    function mudaStatusDosInputsParaHabilitado() {

        Array.from(get("input")).forEach((input) => input.removeAttribute("disabled"));

        document.getElementById("C4_textCpf").setAttribute("disabled", true);
    }

    function mudaStatusDosInputsParaDesabilitado() {
        Array.from(get("input")).forEach((input) => input.setAttribute("disabled", true));

    }

    function preencheCampos(funcionario) {
        document.getElementById("C4_textNome").value = funcionario.Nome;
        document.getElementById("C4_textCpf").value = funcionario.Cpf;
        document.getElementById("C4_textRg").value = funcionario.Rg;
        document.getElementById("C4_textDataDeNascimento").value = funcionario.DataDeNascimento;
        document.getElementById("C4_textTelefone").value = funcionario.Telefone;
        document.getElementById("C4_textEmail").value = funcionario.Email;
        document.getElementById("C4_textCidade").value = funcionario.Cidade;
        document.getElementById("C4_textEstado").value = funcionario.Estado;
        document.getElementById("C4_textCep").value = funcionario.Cep;
        document.getElementById("C4_textCargo").value = funcionario.Cargo;
        document.getElementById("C4_textFormacao").value = funcionario.Formacao;
        document.getElementById("C4_textSalario").value = funcionario.Salario;
    }


    function get(selector) {
        return document.querySelectorAll(selector);
    }
}

