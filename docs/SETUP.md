# Detailed Setup Instructions

## 1. FRED API Setup

1. Visit https://fred.stlouisfed.org/docs/api/api_key.html
2. Create an account if you don't have one
3. Generate an API key
4. Copy the key for the next step

## 2. Power BI Template Setup

1. Open fred-dashboard.pbit
2. When prompted, enter your FRED API key
3. Go to Transform Data
4. Check all queries are working
5. Click Apply & Close

## 3. Customizing the Dashboard

### Adding New FRED Series
1. Go to Transform Data
2. Duplicate an existing query
3. Update the series_id parameter
4. Update the data model relationships

### Creating Custom Measures
1. Use the provided DAX templates
2. Follow naming conventions
3. Document new measures

## 4. Deployment

### Power BI Service
1. Publish to your workspace
2. Set up scheduled refresh
3. Configure row-level security if needed
4. Share with your team