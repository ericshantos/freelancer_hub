[🇧🇷] [Lê em português](README.pt.md)

<h1 align='center'>FreelancerHub Platform</h1>  

<div align='center'>  
    <img src="https://img.shields.io/badge/MySQL-v8.0-blue" alt="MySQL version" />  
    <img src="https://img.shields.io/badge/license-MIT-green" alt="license" />  
</div>  

<br>  

**FreelancerHub** is a freelancer hiring and service marketplace platform designed to connect freelancers and clients, facilitating project execution and management. The system was developed as part of the final project for Module 3 of the Full Stack Web Development course at *Programadores do Amanhã (PdA)*.  

## Description  

The project provides a relational database with various functionalities to support user operations (freelancers and clients), services, payments, security, reviews, feedback, and more. The platform allows freelancers to post their services and clients to create and manage projects. Additionally, the system includes security features, project status tracking, and communication between parties.  

## Database Structure  

The project's database consists of several tables, including users, services, projects, payments, reviews, feedback, and security. Each table has the following responsibilities:  

- **usuario**: Stores user information, including user type (freelancer or client).  
- **pagamento**: Records payment information from clients to freelancers.  
- **seguranca**: Manages user profile security levels.  
- **servico**: Stores services offered by freelancers.  
- **avaliacao**: Records client reviews of freelancers after project completion.  
- **feedback**: Contains client feedback on freelancers.  
- **projeto**: Stores projects created by clients and assigned to freelancers.  
- **comunicacao**: Stores messages exchanged between clients and freelancers within the platform.  
- **politica**: Stores penalty rules and project cancellation policies.  

## Requirements  

- MySQL 5.7 or higher.  
- UTF-8MB4 for special character compatibility.  

## Scripts  

The project includes the following scripts for database setup and population:  

1. **setup.sql**: Configures the database, including table creation, indexes, triggers, procedures, views, and permissions.  
2. **scripts/00-criacao-banco.sql**: Creates the `freelancerHub` database.  
3. **scripts/01-tabelas.sql**: Defines the main database tables.  
4. **scripts/02-relacionamentos.sql**: Establishes foreign keys to ensure referential integrity between tables.  
5. **scripts/03-dados-iniciais.sql**: Inserts initial data into the tables.  
6. **scripts/04-indexes.sql**: Creates indexes to optimize queries.  
7. **scripts/05-triggers.sql**: Defines triggers for database process automation.  
8. **scripts/06-procedures.sql**: Contains stored procedures for specific operations.  
9. **scripts/07-views.sql**: Defines views to simplify data queries.  
10. **scripts/08-functions.sql**: Contains SQL functions for auxiliary operations.  
11. **scripts/09-permissoes.sql**: Configures necessary user permissions in the database.  

## How to Run the Database  

1. **Clone the repository**:  
   ```bash  
   git clone https://github.com/your-username/freelancerHub.git  
   cd freelancerHub  
   ```  

2. **Connect to MySQL**:  
   Open the terminal and connect to MySQL:  
   ```bash  
   mysql -u user -p  
   ```  
   > Replace `user` with your profile (default is `root`).  

3. **Create the database and load the scripts**:  
   Execute the `setup.sql` script to set up the database:  
   ```sql  
   source scripts/setup.sql;  
   ```  

4. **Verify that the tables were created correctly**:  
   ```sql  
   SHOW TABLES;  
   ```  

## Business Rules  

The main business rules of the system include:  

- User registration with different types (Freelancer or Client).  
- Freelancers posting services with defined categories and prices.  
- Clients creating projects and hiring freelancers.  
- Payments processed by the platform, held until service delivery.  
- Client review and feedback system for freelancers.  
- Security policies to protect sensitive data, such as passwords and payment information.  

**Note**: Business rules are detailed in [business_rules.md](assets/business_rules.md).  

## Technologies Used  

- **Database**: MySQL  
- **Backend**: Not applicable (this project only covers the database structure)  
- **Frontend**: Not applicable (backend project)  

## Contributors  

- [Caio Vinicius Pereira Sousa]()  
- [Emilly Santos da Silva]()  
- [Eric Santos](https://www.github.com/ericshantos)  
- [Kauê Santos Calixto](https://www.github.com/kauecalixto)  
- [Jerônimo Santos Rodrigues](https://www.github.com/JeronimoSantos)  
- [Marta Rebeca de Carvalho Nerys]()  
- [Pedro Washigton Azevedo de Jesus](https://www.github.com/PWzx07)  
- [Tayssa Ramos Vergilio](https://www.github.com/Tayssa2212)  

## License  

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
