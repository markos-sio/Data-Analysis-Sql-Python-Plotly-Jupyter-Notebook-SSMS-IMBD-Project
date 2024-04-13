SQL and Python Data Analysis Project: Top 1000 IMDB Movies
To see the full presentation including the Plotly graphs visit: https://nbviewer.org/github/markos-sio/Data-Analysis-Sql-Python-Plotly-Jupyter-Notebook-SSMS-IMBD-Project/blob/main/imbd%20python-sql%20project%20.ipynb

This project involves both SQL and Python data analysis, focusing on the Top 1000 IMDB movies dataset obtained from Kaggle.

1. Data Cleaning:
The dataset undergoes initial cleaning using SQL Server Management Studio (SSMS). This process involves removing unnecessary symbols, handling unexpected values, and creating new columns with data in appropriate data types. All SQL statements used for cleaning are documented in the file "Cleaning data in SSMS, Adding new columns".

2. Data Import:
Following cleaning, the data is imported into a Jupyter Notebook using the file "csv_final_for_jupyter_notebook.csv". Additionally, a SQL connection is established, and an in-memory database is created with the main table named 'final' to facilitate data retrieval via SQL queries.

3. Data Analysis and Visualization:
Utilizing SQL queries, various visualizations are generated using the powerful Plotly library.

4. Exploratory Data Analysis:
A comprehensive exploratory data analysis is provided, including an analysis of data grouped by decade.

