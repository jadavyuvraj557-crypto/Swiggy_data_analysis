# Swiggy Restaurant Data Analysis

## Project Overview

This project focuses on analyzing Swiggy restaurant data using Python and Pandas. The main goal of this project was to clean the raw dataset, explore the data, and find useful insights about restaurants, ratings, prices, cuisines, locations, and vegetarian options.

I worked with a dataset containing more than 140,000 restaurant records. During the project, I performed data cleaning and Exploratory Data Analysis (EDA) and created charts to better understand the data.

## Dataset

The dataset contains information such as:

- Restaurant Name
- Cuisine
- Rating
- Number of Ratings
- Average Price
- Number of Offers
- Offer Name
- Area
- Pure Veg
- Location

## Tools and Technologies Used

- Python
- Pandas
- Matplotlib
- Jupyter Notebook

## Data Cleaning

The raw dataset contained some values that needed cleaning.

### Rating

Some rating values were stored as:

- `--`
- `NEW`

These values were replaced with missing values, and the Rating column was converted into a numeric format.

### Number of Ratings

The column contained values such as:

- `Too Few Ratings`
- `10+ ratings`
- `100+ ratings`
- `1K+ ratings`
- `5K+ ratings`
- `10K+ ratings`

`Too Few Ratings` was converted to missing values. Other values were converted into numeric values for analysis.

For example:

- `10+` → `10`
- `100+` → `100`
- `1K+` → `1000`
- `5K+` → `5000`
- `10K+` → `10000`

### Average Price

The Average Price column contained unwanted text and symbols. These were cleaned and the column was converted into a numeric format.

## Exploratory Data Analysis

The following analysis was performed:

- Rating distribution of restaurants
- Distribution of restaurants based on the number of ratings
- Average price analysis
- Most common restaurant offers
- Pure Veg vs Non-Pure Veg restaurant comparison
- Top 10 locations by number of restaurants
- Top 10 cuisines by number of restaurants
- Top 10 areas by number of restaurants

## Key Findings

Some important observations from the analysis include:

- The dataset contains **140,657 restaurant records**.
- There are **581 unique locations** in the dataset.
- There are **16,307 unique areas**.
- Non-Pure Veg restaurants are more common than Pure Veg restaurants.
- The dataset contains restaurants with different rating levels and rating counts.
- Some locations and cuisines have significantly more restaurants than others.
- Restaurant offers have many different combinations, making individual offer analysis more complex.

## Charts

The project includes charts for:

- Rating Distribution
- Restaurant Distribution by Number of Ratings
- Pure Veg vs Non-Pure Veg Restaurants
- Top 10 Locations by Number of Restaurants
- Top 10 Cuisines by Number of Restaurants
- Top 10 Areas by Number of Restaurants

