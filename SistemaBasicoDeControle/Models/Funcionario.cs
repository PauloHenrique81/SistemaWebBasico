using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaBasicoDeControle.Models
{
    public class Funcionario
    {
        public string Nome { get; set; }
        public string Cpf { get; set; }
        public string Rg { get; set; }
        public string Telefone { get; set; }
        public string DataDeNascimento { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
        public string Cep { get; set; }
        public string Cargo { get; set; }
        public string Formacao { get; set; }
        public float Salario { get; set; }
        public string Email { get; set; }

        public Funcionario()
        {

        }

        public Funcionario(string nome, string cpf, string rg, string telefone, string dataDeNascimento, string cidade,
            string estado, string cep, string cargo, string formacao, float salario, string email)
        {
            this.Nome = nome;
            this.Cpf = cpf;
            this.Rg = rg;
            this.Telefone = telefone;
            this.DataDeNascimento = dataDeNascimento;
            this.Cidade = cidade;
            this.Estado = estado;
            this.Cep = cep;
            this.Cargo = cargo;
            this.Formacao = formacao;
            this.Salario = salario;
            this.Email = email;
        }

    }
}