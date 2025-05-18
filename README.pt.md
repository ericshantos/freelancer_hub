[🇬🇧] [Read in English](README.md)

<h1 align='center'>Plataforma FreelancerHub</h1>

<div align='center'>
    <img src="https://img.shields.io/badge/MySQL-v8.0-blue" alt="versão MySQL" />
    <img src="https://img.shields.io/badge/license-MIT-green" alt="licença" />
</div>

<br>

**FreelancerHub** é uma plataforma de contratação e venda de serviços freelancer, projetada para conectar freelancers e clientes, facilitando a execução e o gerenciamento de projetos. O sistema foi desenvolvido como parte do trabalho final do módulo 3 do curso Full Stack Web da Programadores do Amanhã (PdA).

## Descrição

O projeto oferece um banco de dados relacional com diversas funcionalidades para suportar as operações de usuários (freelancers e clientes), serviços, pagamentos, segurança, avaliações, feedbacks, entre outros. A plataforma permite que os freelancers publiquem seus serviços e que os clientes criem e gerenciem projetos. Além disso, o sistema inclui recursos de segurança, controle de status de projetos e comunicação entre as partes.

## Estrutura do Banco de Dados

O banco de dados do projeto é composto por várias tabelas, incluindo usuários, serviços, projetos, pagamentos, avaliações, feedbacks e segurança. Cada tabela possui as seguintes responsabilidades:

- **usuario**: Armazena informações de usuários, incluindo tipo de usuário (freelancer ou cliente).
- **pagamento**: Registra informações sobre os pagamentos feitos pelos clientes aos freelancers.
- **seguranca**: Controla o nível de segurança do perfil dos usuários.
- **servico**: Armazena os serviços oferecidos pelos freelancers.
- **avaliacao**: Registra as avaliações feitas pelos clientes aos freelancers após a conclusão de um projeto.
- **feedback**: Contém os feedbacks fornecidos por clientes sobre freelancers.
- **projeto**: Armazena os projetos criados pelos clientes e associados aos freelancers.
- **comunicacao**: Armazena as mensagens trocadas entre os clientes e freelancers dentro da plataforma.
- **politica**: Armazena as regras de penalização e as condições de cancelamento de projetos.

## Requisitos

- MySQL 5.7 ou superior.
- UTF-8MB4 para compatibilidade com caracteres especiais.

## Scripts

O projeto contém os seguintes scripts para configuração e populamento do banco de dados:

1. **setup.sql**: Responsável por configurar o banco de dados, incluindo a criação de tabelas, índices, triggers, procedures, views e permissões.
2. **scripts/00-criacao-banco.sql**: Cria o banco de dados `freelancerHub`.
3. **scripts/01-tabelas.sql**: Define as tabelas principais do banco de dados.
4. **scripts/02-relacionamentos.sql**: Estabelece as chaves estrangeiras para garantir a integridade referencial entre as tabelas.
5. **scripts/03-dados-iniciais.sql**: Insere dados iniciais nas tabelas.
6. **scripts/04-indexes.sql**: Cria índices para otimizar as consultas.
7. **scripts/05-triggers.sql**: Define triggers para automação de processos no banco de dados.
8. **scripts/06-procedures.sql**: Contém as procedures armazenadas para operações específicas.
9. **scripts/07-views.sql**: Define as views para facilitar a consulta de dados.
10. **scripts/08-functions.sql**: Contém funções SQL para operações auxiliares.
11. **scripts/09-permissoes.sql**: Configura as permissões necessárias para usuários no banco de dados.

## Como Rodar o Banco de Dados

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/seu-usuario/freelancerHub.git
   cd freelancerHub
   ```

2. **Conecte-se ao MySQL**:
   Abra o terminal e conecte-se ao MySQL:
   ```bash
   mysql -u usuario -p
   ```
   > Substitua usuario pelo perfil utilizado, por padrão, utilize `root`.

3. **Crie o banco de dados e carregue os scripts**:
   Execute o script `setup.sql` para configurar o banco de dados:
   ```sql
   source scripts/setup.sql;
   ```

4. **Verifique se as tabelas foram criadas corretamente**:
   ```sql
   SHOW TABLES;
   ```

## Regras de Negócio

As principais regras de negócio do sistema incluem:

- Cadastro de usuários com tipos diferentes (Freelancer ou Cliente).
- Publicação de serviços por freelancers, com categoria e preço definidos.
- Criação de projetos por clientes e contratação de freelancers.
- Pagamentos realizados pela plataforma com retenção até a entrega do serviço.
- Sistema de avaliação e feedbacks dos clientes sobre os freelancers.
- Políticas de segurança para proteger dados sensíveis, como senhas e informações de pagamento.

**Nota**: As regras de negócio estão detalhadas em [regras_de_negocio.md](assets/regras_de_negocio.md).

## Tecnologias Utilizadas

- **Banco de dados**: MySQL
- **Backend**: Não aplicável (este projeto refere-se apenas à estrutura do banco de dados)
- **Frontend**: Não aplicável (projeto backend)

## Contribuidores

- [Caio Vinicius Pereira Sousa]()
- [Emilly Santos da Silva]()
- [Eric Santos](https://www.github.com/ericshantos)
- [Kauê Santos Calixto](https://www.github.com/kauecalixto)
- [Jerônimo Santos Rodrigues](https://www.github.com/JeronimoSantos)
- [Marta Rebeca de Carvalho Nerys]()
- [Pedro Washigton Azevedo de Jesus](https://www.github.com/PWzx07)
- [Tayssa Ramos Vergilio](https://www.github.com/Tayssa2212)

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.