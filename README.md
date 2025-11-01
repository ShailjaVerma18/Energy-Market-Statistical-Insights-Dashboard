# **Energy Market Statistical Insights Project**

## **Project Overview**
This project aims to perform **Exploratory Data Analysis (EDA)** and create an **interactive visualization dashboard** to gain statistical insights into energy market data.  
The analysis was carried out using **Python**, **SQL (MySQL Workbench)**, **Excel**, and **Tableau** to compare analytical capabilities across tools.

---

## **Project Objectives**
- Analyze energy market trends and volatility using descriptive statistics.  
- Perform EDA in multiple tools to understand various analytical workflows.  
- Build an interactive Tableau dashboard for visual insights and user interaction.

---

## **Dataset**
- **File Name:** `Data set.xlsx`  
- **Description:** Contains energy market variables such as LNG, coal, and natural gas prices, market share indicators, and other energy-related attributes.

---

## **Step 1: Python-Based EDA**
**Tool:** Python (Jupyter Notebook / Google Colab)

### **Tasks Performed**
- Imported and cleaned data using `pandas` and `numpy`.
- Performed Exploratory Data Analysis including:
  - **Measures of Central Tendency:** Mean, Median, Mode  
  - **Measures of Dispersion:** Variance, Standard Deviation, Range  
  - **Shape of Distribution:** Skewness, Kurtosis  
- Visualized data distributions using `boxplot`,'scatterplot' and `linechart`.

### **Key Insights**
- Identified fluctuations and outliers in energy price data.
- Detected non-normal distributions for certain energy commodities.

---

## **Step 2: SQL-Based EDA**
**Tool:** MySQL Workbench

### **Tasks Performed**
- Imported the dataset into a MySQL database table.
- Used SQL queries to perform descriptive and inferential analysis:
  - Calculated **Mean**, **Median**, and **Mode** using aggregate and window functions.
  - Computed **Variance** and **Standard Deviation** with MySQL built-in functions.
  - Derived **Skewness** and **Kurtosis** using formula-based SQL calculations.
- Verified consistency of results with Python analysis.

---

## **Step 3: Excel-Based EDA**
**Tool:** Microsoft Excel

### **Tasks Performed**
- Utilized Excel formulas to compute:
  - Mean → `=AVERAGE(range)`  
  - Median → `=MEDIAN(range)`  
  - Mode → `=MODE.SNGL(range)`  
  - Variance → `=VAR.P(range)`  
  - Standard Deviation → `=STDEV.P(range)`  
  - Skewness → `=SKEW(range)`  
  - Kurtosis → `=KURT(range)`
- Created basic visualizations such as histograms and scatter plots.

### **Outcome**
- Quick statistical overview and validation of the same metrics calculated in Python and SQL.

---

## **Step 4: Interactive Dashboard**
**Tool:** Tableau Public

### **Dashboard Title:** *Energy Market Statistical Insights Dashboard*

### **Features**
- Dropdown filters for dynamic field selection.  
- Visual analysis panels including:
  - **Trend Analysis:** Time-series visualization of LNG price trends.  
  - **Volatility Analysis:** Year-wise distribution and variation of Natural Gas prices.  
  - **Statistical Interaction:** Scatter plots showing correlation among key metrics.  
  - **Statistical Summary:** Mean, variance, and standard deviation visualization.

### **Screenshot Example**


---

<img width="1817" height="750" alt="Screenshot 2025-11-01 170447" src="https://github.com/user-attachments/assets/f3b5f610-cb22-4c5d-ba8d-d35d788cebd4" />

----

<img width="1790" height="676" alt="Screenshot 2025-11-01 170543" src="https://github.com/user-attachments/assets/f07fbd37-4711-420d-a3d7-47f652d208a6" />

---

<img width="1788" height="539" alt="Screenshot 2025-11-01 170620" src="https://github.com/user-attachments/assets/b1fca762-fc23-47a5-87fe-102f39741011" />

---

<img width="1795" height="539" alt="Screenshot 2025-11-01 170713" src="https://github.com/user-attachments/assets/351ddb25-0c2e-4284-874b-0c3ce828a812" />

---

<img width="1808" height="687" alt="Screenshot 2025-11-01 170752" src="https://github.com/user-attachments/assets/17c957e0-783c-4f90-87c3-5557f04349df" />



---

## **Key Insights**
- LNG and Natural Gas prices peaked in 2022, indicating high market volatility.  
- Statistical dispersion and skewness highlight asymmetrical price behavior.  
- Positive correlation observed between coal price and overall market share.  

---

## **Tools & Technologies Used**
| Category | Tools / Libraries |
|-----------|------------------|
| Programming | Python (Pandas, NumPy) |
| Database | MySQL Workbench |
| Spreadsheet | Microsoft Excel |
| Visualization | Tableau Public |

---

## **Deliverables**
1. Python EDA Script (`.ipynb`)  
2. SQL Queries File (`.sql`)  
3. Excel Workbook (`Data set.xlsx`)  
4. Tableau Dashboard (Public link or `.twbx` file)  
5. README File (Documentation)

---

## **Conclusion**
This project demonstrates the complete workflow of performing statistical analysis across different analytical platforms and visualizing insights in an interactive dashboard for better understanding of the energy market trends.

---

## **Acknowledgment**
This task was assigned and guided by **Apana Time Tech Solution** as part of an internship project.
