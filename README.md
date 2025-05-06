<<<<<<< HEAD
# 🏥 Simulação de Banco de Dados - Clínica Médica

Este repositório contém um projeto acadêmico que simula o banco de dados de uma clínica médica com diversas especialidades. O objetivo é demonstrar a criação e manipulação de dados utilizando comandos SQL.

---

## 📁 Estrutura do Projeto

* **`ddl/`**: Contém o script SQL para criação das estruturas do banco de dados.

  * **`create_tables.sql`**: Script de Data Definition Language (DDL) com os comandos para criação das tabelas e definição das restrições do banco de dados.
* **`dml/`**: Contém o script SQL para inserção de dados nas tabelas.

  * **`insert_tables.sql`**: Script de Data Manipulation Language (DML) com os comandos para inserção de dados nas tabelas.
* **`midia/`**: Contém imagens relacionadas ao projeto, como diagramas do modelo conceitual e lógico do banco de dados.([GitHub][1])

---

## 🧰 Tecnologias Utilizadas

* **SQL**
* **pgAdmin**
* **draw\.io**

---

Claro! Para garantir que os arquivos da pasta `media/` sejam acessados corretamente, é necessário utilizar o Git Large File Storage (Git LFS). Aqui está a seção modificada do seu README com as instruções adequadas:

---

## 🚀 Como Executar

1. Clone este repositório:

   ```bash
   git clone https://github.com/Netinho-dotcom/nome-do-repositorio.git
   ```

2. Instale o Git LFS (Git Large File Storage):

   * **Windows:** Baixe e instale o Git LFS a partir do site oficial: [https://git-lfs.com](https://git-lfs.com)
   * **macOS:** Utilize o Homebrew:

     ```bash
     brew install git-lfs
     ```
   * **Linux:** Utilize o gerenciador de pacotes da sua distribuição ou siga as instruções no site oficial.

   Após a instalação, inicialize o Git LFS:

   ```bash
   git lfs install
   ```

3. Após clonar o repositório, certifique-se de baixar os arquivos grandes (como os da pasta `media/`) gerenciados pelo Git LFS:

   ```bash
   git lfs pull
   ```

4. Abra o seu SGBD de preferência.

5. Execute o script `ddl/create_tables.sql` para criar as estruturas do banco de dados.

6. Execute o script `dml/insert_tables.sql` para inserir os dados iniciais.


---

## 📸 Imagens do Projeto

As imagens do modelo relacional quando os resultaods das consultas e vídeo explicativo estão disponíveis na pasta `midia/`. Esses diagramas auxiliam na compreensão da estrutura e relacionamentos entre as tabelas.

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

## 👤 Autor

* **Netinho-dotcom** - [@Netinho-dotcom](https://github.com/Netinho-dotcom)
=======
Olá, essa a atividade avaliativa referente a segunda nota da disciplina Introdução a banco de Dados visando a criação de a manipulação de tabelas e seus dados utilizando da linguagem SQL. O cénario escolhido para esse trablho foi o Cenário C - Clínica de Especialidades onde lidaremos com Gestão de pacientes, médicos com várias especialidades , agendamentos, consultas, receitas e pagamentos.
na pasta "ddl" você encontrará todos os códigos da criação das tabelas, enquanto na tabela "dml" está os códigos da inserção de dados e manipulação dos mesmo através de consultas. Pro fim na pasta media você encontrará as imagens dos resultados das consultas, o modelo de relacionamentos e o vídeo explicando todo o projeto.
>>>>>>> 62dea9f9a7c906de697cab88f0281a32f90ab8cf
