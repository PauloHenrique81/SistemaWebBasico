window.onload = () => {

    var campoFiltro = document.querySelector('#inputNomeBusca');

    campoFiltro.addEventListener("input", function () {
        console.log(this.value);
        var funcionarios = document.querySelectorAll(".funcionario");

        if (this.value.length > 0) {

            for (i = 0; i < funcionarios.length; i++) {
                var funcionario = funcionarios[i];
                var tdNome = funcionario.querySelector(".nome");
                var nome = tdNome.textContent;
                var expressao = new RegExp(this.value, "i");
                if (!expressao.test(nome)) {
                    funcionario.classList.add("invisivel");
                } else {
                    funcionario.classList.remove("invisivel");
                }
            }
        } else {
            for (i = 0; i < funcionarios.length; i++) {
                var funcionario = funcionarios[i];
                funcionario.classList.remove("invisivel");

            }
        }

    });

}

