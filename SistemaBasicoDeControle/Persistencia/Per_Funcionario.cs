using Npgsql;
using SistemaBasicoDeControle.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SistemaBasicoDeControle.Persistencia
{
    public class Per_Funcionario
    {
        static string connString = "Host=192.168.25.50; Port = 5433; Username=postgres; Database=suasvendas";

        public static bool Cadastrar(Funcionario funcionario)
        {
            try
            {
                using (var conn = new NpgsqlConnection(connString))
                {
                    conn.Open();

                    using (var cmd = new NpgsqlCommand(string.Format("INSERT INTO ph_funcionarios (nome,cpf, rg, telefone,dataDeNascimento,cidade,estado,cep,cargo,formacao,salario,email) " +
                         "VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')", funcionario.Nome, funcionario.Cpf, funcionario.Rg, funcionario.Telefone, funcionario.DataDeNascimento, funcionario.Cidade,
                         funcionario.Estado, funcionario.Cep, funcionario.Cargo, funcionario.Formacao, funcionario.Salario, funcionario.Email), conn ))
                    {

                        var teste = cmd.ExecuteNonQuery();

                        return true;
                    }

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public static DataTable BuscarTodos()
        {
            try
            {
                using (var conn = new NpgsqlConnection(connString))
                {
                    conn.Open();

                    using (var cmd = new NpgsqlCommand("SELECT * FROM ph_funcionarios ", conn))
                    {
                        DataTable dataTable = new DataTable();

                        var funcionarios = cmd.ExecuteReader();
                        dataTable.Load(funcionarios);

                        return dataTable;
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static Funcionario BuscarPeloCpf(string cpf)
        {
            try
            {
                using (var conn = new NpgsqlConnection(connString))
                {
                    conn.Open();

                    using (var cmd = new NpgsqlCommand(string.Format("SELECT * FROM ph_funcionarios WHERE cpf = '{0}'", cpf), conn))
                    {
                        DataTable dataTable = new DataTable();

                        var funcionarios = cmd.ExecuteReader();

                        if (funcionarios != null)
                        {
                            dataTable.Load(funcionarios);

                            return (from l in dataTable.AsEnumerable()
                                    select new Funcionario
                                    {
                                        Nome = l["nome"].ToString(),
                                        Cpf = l["cpf"].ToString(),
                                        Rg = l["rg"].ToString(),
                                        Telefone = l["telefone"].ToString(),
                                        DataDeNascimento = l["dataDeNascimento"].ToString(),
                                        Cidade = l["cidade"].ToString(),
                                        Estado = l["estado"].ToString(),
                                        Cep = l["cep"].ToString(),
                                        Cargo = l["cargo"].ToString(),
                                        Formacao = l["formacao"].ToString(),
                                        Salario = float.Parse(l["salario"].ToString()),
                                        Email = l["email"].ToString()

                                    }).First();
                        }

                        return null;
                
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void EditarPeloCpf(Funcionario funcionario)
        {
            try
            {
                using (var conn = new NpgsqlConnection(connString))
                {
                    conn.Open();

                    using (var cmd = new NpgsqlCommand(string.Format("UPDATE ph_funcionarios SET nome = '{0}',cpf = '{1}', " +
                        "rg = '{2}', telefone = '{3}',dataDeNascimento = '{4}',cidade = '{5}',estado = '{6}',cep = '{7}',cargo = '{8}'," +
                        "formacao = '{9}',salario = '{10}',email = '{11}' WHERE cpf = '{1}'", funcionario.Nome, funcionario.Cpf, funcionario.Rg, funcionario.Telefone, funcionario.DataDeNascimento, funcionario.Cidade,
                         funcionario.Estado, funcionario.Cep, funcionario.Cargo, funcionario.Formacao, funcionario.Salario, funcionario.Email), conn))
                    {
                        DataTable dataTable = new DataTable();

                        var funcionarios = cmd.ExecuteReader();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static void Deletar(string cpf)
        {
            try
            {
                using (var conn = new NpgsqlConnection(connString))
                {
                    conn.Open();

                    using (var cmd = new NpgsqlCommand(string.Format("DELETE FROM ph_funcionarios WHERE cpf = '{0}'", cpf), conn))
                    {
                        DataTable dataTable = new DataTable();

                        var funcionarios = cmd.ExecuteReader();
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}