# 📚 Database II – PostgreSQL

**Instructor:** Orlando Isaac Aguilera Zambrana  
**Email:** tj.orlando.isaac.aguilera.z@upds.edu.bo  
**Subject:** Database II

This repository contains all the resources for the **Database II** course, organized into database scripts, learning content, exercises, and academic materials.

---

## 📁 Repository Structure

```
database/                # SQL scripts for database creation and logic
├─ schema/
│  ├─ 01_schema.sql
│  ├─ 02_constraints.sql
│  └─ 03_sample_data.sql
├─ views/
│  ├─ views.sql
│  └─ materialized_views.sql
├─ functions/
│  ├─ user_functions.sql
│  └─ procedures.sql
├─ triggers/
│  ├─ basic_triggers.sql
│  ├─ audit_triggers.sql

content/                 # Example scripts and demonstrations
├─ basic_queries/
│  ├─ select_where.sql
│  ├─ like_between_in.sql
│  ├─ joins.sql
│  ├─ groupby_having.sql
│  └─ orderby_limit.sql
├─ subqueries_ctes/
│  ├─ subqueries.sql
│  ├─ correlated_subqueries.sql
│  └─ ctes.sql

exercises/               # Practice activities
├─ statements/           # Questions only
│  ├─ basic_queries.md
│  ├─ joins.md
│  ├─ subqueries.md
│  └─ triggers.md
└─ solutions/            # Answers and scripts
   ├─ basic_queries.sql
   ├─ joins.sql
   ├─ subqueries.sql
   └─ triggers.sql

materials/               # Academic resources
├─ notes/
├─ slides/
├─ diagrams/
└─ references/
```

---

## 🛠 Requirements

- **PostgreSQL** version 14 or higher
- **pgAdmin** (latest recommended version)
- SQL client or code editor (VS Code recommended)

---

## 🚀 How to Use

1. **Clone the repository**

   ```bash
   git clone https://github.com/orlando-az/Base_de_Datos_II.git
   cd Base_de_Datos_II
   ```

2. **Create the database in pgAdmin**

   - Open pgAdmin
   - Connect to your PostgreSQL server
   - Create a database named `database_ii` (or as preferred)

3. **Execute scripts in order**

   - Start with `database/schema/01_schema.sql`
   - Then run `database/schema/02_constraints.sql`
   - Optionally load sample data with `database/schema/03_sample_data.sql`
   - Continue with views, functions, and triggers as needed

4. **Explore examples**

   - Open `.sql` files from the `content/` folder to see examples by topic
   - Run them in pgAdmin or any SQL client connected to the database

5. **Practice exercises**
   - Attempt problems from `exercises/statements/`
   - Compare your answers with the solutions in `exercises/solutions/`

---

## 🎯 Learning Goals

By the end of the course, students will be able to:

- Design, create, and manage relational databases using PostgreSQL
- Write and optimize complex SQL queries
- Implement views, stored functions, and triggers
- Apply best practices for database integrity and performance

---

## 📩 Contact

For questions or clarifications, please contact:  
**Orlando Isaac Aguilera Zambrana**  
📧 **tj.orlando.isaac.aguilera.z@upds.edu.bo**
