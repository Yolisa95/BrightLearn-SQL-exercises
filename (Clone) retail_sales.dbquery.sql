{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 104857600,
      "rowLimit": 1000
     },
     "inputWidgets": {},
     "nuid": "ff8bedeb-372f-4e18-974e-205a6baeb3fd",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [],
   "source": [
    "--Display all records in the retail sales table.\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "LIMIT 100;\n",
    "\n",
    "--Display only the Cutomer ID and Product Category\n",
    "SELECT `Customer ID`, \n",
    "       `Product Category`\n",
    "FROM retail_sales;\n",
    "\n",
    "--Display all electronic sales transactions\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "WHERE `Product Category` = 'Electronics';\n",
    "\n",
    "--Display customers who are older than 40\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "WHERE Age > 40;\n",
    "\n",
    "--Display transactions where the quantity purchased is 3 or more\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "WHERE `Quantity` >= 3;\n",
    "\n",
    "--Display Beauty product sales where the total amount is greater than 100\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "WHERE `Product Category` = 'Beauty' AND `Total Amount` > 100;\n",
    "\n",
    "--Display customers whose ages are between 25 and 35\n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "WHERE Age BETWEEN 25 AND 35;\n",
    "\n",
    "--Calculate the total sales amount for all transactions\n",
    "SELECT SUM (`Total Amount`) AS `Total Sales`\n",
    "FROM retail_sales;\n",
    "\n",
    "--Calculate the average age of all customers. \n",
    "SELECT AVG(Age) AS `Average Age`\n",
    "FROM retail_sales;\n",
    "\n",
    "--Find the highest sale amount recorded. \n",
    "SELECT *\n",
    "FROM retail_sales\n",
    "ORDER BY `Total Amount` DESC\n",
    "LIMIT 1;"
   ]
  }
 ],
 "metadata": {
  "application/vnd.databricks.v1+notebook": {
   "computePreferences": null,
   "dashboards": [],
   "environmentMetadata": null,
   "inputWidgetPreferences": null,
   "language": "sql",
   "notebookMetadata": {
    "pythonIndentUnit": 4,
    "sqlQueryOptions": {
     "applyAutoLimit": true,
     "catalog": "workspace",
     "schema": "default"
    }
   },
   "notebookName": "(Clone) retail_sales.dbquery.ipynb",
   "widgets": {}
  },
  "language_info": {
   "name": "sql"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 0
}
