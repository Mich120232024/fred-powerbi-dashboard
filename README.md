# FRED Power BI Dashboard

A comprehensive Power BI dashboard template for analyzing Federal Reserve Economic Data (FRED) with focus on USD currency analysis.

## Features

- Real-time FRED data connection
- Pre-built visualizations for key economic indicators
- DAX measures for advanced analysis
- Drill-through capabilities
- Mobile-friendly layout

## Quick Start

1. Clone this repository
2. Open `fred-dashboard.pbit` in Power BI Desktop
3. Enter your FRED API key when prompted
4. Refresh data to populate dashboard

## Data Sources

This dashboard connects to the following FRED series:

### Monetary Policy
- FEDFUNDS (Federal Funds Rate)
- M2SL (M2 Money Supply)
- TOTBKCR (Bank Credit)
- DGS10 (10-Year Treasury Rate)

### Price Stability
- CPIAUCSL (Consumer Price Index)
- PCEPI (Personal Consumption Expenditures Price Index)
- PPIACO (Producer Price Index)
- USIMP (Import Price Index)

### Economic Growth
- GDPC1 (Real GDP)
- INDPRO (Industrial Production)
- TCU (Capacity Utilization)
- RSXFS (Retail Sales)

### Labor Market
- UNRATE (Unemployment Rate)
- PAYEMS (Nonfarm Payrolls)
- CIVPART (Labor Force Participation)
- CES0500000003 (Average Hourly Earnings)

### International Trade
- BOPGSTB (Trade Balance)
- BOGMCANU (Current Account)
- DTWEXB (USD Index)
- EXUSEU (USD/EUR Exchange Rate)

## Setup Instructions

### 1. FRED API Key
1. Visit https://fred.stlouisfed.org/docs/api/api_key.html
2. Create a free account and get your API key
3. Copy the key for use in Power BI

### 2. Power BI Setup
1. Open the template
2. Go to Transform Data > Data Source Settings
3. Update the API key in the FRED connection
4. Apply changes and refresh data

### 3. Customization
- Use the included DAX measures
- Modify visuals as needed
- Add additional FRED series using the template queries

## DAX Measures

Key measures included in the template:

```
// USD Strength Index
USD_Strength = 
CALCULATE(
    AVERAGE('FRED Data'[DTWEXB]),
    LASTDATE('FRED Data'[DATE])
)

// Real Interest Rate
Real_Rate = 
[Federal Funds Rate] - [Core PCE YoY]

// Economic Growth Score
Growth_Score = 
AVERAGEX(
    FILTER(
        ALL('Indicators'),
        'Indicators'[Type] = "Growth"
    ),
    [Normalized Value]
)
```

## Refresh Schedule

- Default refresh: Daily
- Recommended: Set up scheduled refresh in Power BI Service
- Use incremental refresh for large datasets

## Contributing

Feel free to submit issues and enhancement requests!