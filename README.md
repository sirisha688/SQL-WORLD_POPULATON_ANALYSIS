# SQL-WORLD_POPULATON_ANALYSIS
A SQL project analyzing global population trends using a dataset containing population statistics by country. This repository includes SQL queries and insights derived from the world_population1.csv dataset, covering topics such as population growth, regional comparisons, population density, and demographic distributions. 

# 🌍 World Population SQL Project

This repository contains a SQL-based data analysis project using a dataset of world population statistics. The project explores global population trends, growth rates, density, and more using a variety of SQL queries.

## 📁 Contents

- `world_population1.csv` — The dataset containing country-level population data across decades, area, density, capital cities, and continent classifications.
- `world_population_queries.sql` — A collection of SQL queries that analyze and extract insights from the dataset.

## 🗃️ Dataset Overview

The dataset includes the following columns:

- `country`: Name of the country
- `capital`: Capital city
- `continent`: Continent to which the country belongs
- `area_km2`: Total area in square kilometers
- `density_km2`: Population density per square kilometer
- `growth_rate`: Population growth rate (most recent)
- `pop_1970` to `pop_2022`: Population counts by decade

## 🧠 Key SQL Analyses

Here are some examples of insights generated through the queries:

1. **Top 10 Most Populous Countries in 2022**
2. **Average Growth Rate by Continent**
3. **Countries in Europe and Their Capitals**
4. **Number of Countries per Continent**
5. **High Population Density Countries (>500/km²)**
6. **Population Growth from 2010 to 2022**
7. **Countries with Population Decline Since 2000**
8. **Top 3 Largest Countries in Asia by Area**
9. **Highest Density Countries by Continent**
10. **Countries Where Population Has More Than Doubled Since 1990**
11. **Total Population by Continent in 2022**
12. **Countries with Decreasing Population in Three Consecutive Periods**
13. **Countries with Consistent Growth Every Decade Since 1970**
14. **Continent-wise Share of 2022 World Population**

## 🛠️ Requirements

- SQL-compatible database system (e.g., PostgreSQL, MySQL, SQLite)
- Basic understanding of SQL

## 🚀 How to Use

1. Import the CSV file into your SQL database as a table named `world_population`.
2. Run the queries in `world_population_queries.sql` to explore insights.
3. Modify or extend the queries to perform additional analyses.

## 📚 Use Cases

- Data analytics practice
- Educational SQL projects
- Portfolio building
- Exploratory analysis for global population data

## 📜 License

This project is for educational and analytical purposes only.
