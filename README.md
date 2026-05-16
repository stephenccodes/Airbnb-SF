# Airbnb-SF: Identifying High-Quality Hosts in San Francisco

<img src="https://www.kron4.com/wp-content/uploads/sites/11/2022/11/GettyImages-805157508-1.jpg?w=960&h=540&crop=1" width="800"/>


<sub>
San Francisco, California skyline. (Getty) ["https://www.kron4.com/wp-content/uploads/sites/11/2022/11/GettyImages-805157508-1.jpg?w=960&h=540&crop=1]("https://www.kron4.com/wp-content/uploads/sites/11/2022/11/GettyImages-805157508-1.jpg?w=960&h=540&crop=1)
</sub>

## About

This repository houses the files and associated analysis for a relational database project that explores Airbnb listings in San Francisco to identify which neighborhoods are home to the highest-quality hosts.

The goal is to take raw, denormalized Airbnb data, restructure it into a clean relational schema, and use SQL queries to reveal insights about host quality across San Francisco neighborhoods.


## Data Sources
 
Raw data is sourced from [Inside Airbnb](http://insideairbnb.com/get-the-data.html), an independent project that aggregates publicly available Airbnb listing data. The San Francisco snapshot used here includes:
 
- `listings.csv` — Detailed listing information including host attributes
- `reviews.csv` — Guest reviews (not used in the final analysis)
- `neighbourhoods.csv` — Reference table of standardized SF neighborhoods
- `calendar.csv` — Pricing and availability (excluded; not essential to the research question)

The cleaned version of these data files can be found in the `data` folder in this repository.

## Repository Structure
 
```
.
├── airbnb_data.qmd        # Data cleaning notebook and results import
├── data/
│   ├── raw/               # Original Inside Airbnb CSVs (gitignored)
│   └── clean/             # Normalized tables + SQL query results
├──airbnb_database.duckdb
├──lab_project.Rproj
├──airbnb_schema.sql
├──project-query.sql
├── README.md
└── .gitignore
```

### References

1. INside Airbnb (n.d.).  [Inside Airbnb](http://insideairbnb.com/get-the-data.html)(http://insideairbnb.com/get-the-data.html) Access date: April 1, 2026.


### Acknowledgements

All materials were created by [Julien Brun](https://github.com/brunj7) & [Greg Janee](https://github.com/gjanee) for EDS 213: Databases and Data Management from the Master in Environmental Data Science ([MEDS](https://bren.ucsb.edu/masters-programs/master-environmental-data-science)) at the Bren School of Environmental Science & Management, University California at Santa Barbara.
