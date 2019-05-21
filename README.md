# IME-SERIES-MODEL-FORECASTING-
Developed two short term and two long term forecast models for various product types produced by  Arconic Fastening System &amp; Rings. Arconic is a company specializing in lightweight metals engineering and manufacturing.

 Data
• The input data provides year-to-demand information for each of its customer base for the various Group-Product Family (109) and individual Items (1788) within each group. The data comprises of Three Markets – 1, 2 and 3.
• Out of the 12 variables provided constituting of order date, delivery date, quantity, etc. order date is taken as a time measure, segregated for year/months/quarters/weeks as per the need for the long-term or the short-term model and Quantity (PCS) is taken as a measure to forecast for. Further filters are incorporated to calculate demand forecast for grouped (aggregated) items and/or individual items.

 Target
• Forecast the demand for the various product types (Items)/Product family produced by Arconic, present them in an easy to interpret and a future ready format by automating the model or tool used
• Provide two models for short-term (Month time scale) forecasting and two models for long-term (Year time scale) forecasting
• Provide justification for models chosen (pros/cons)

Project Approach
• Filter out the raw data received based on Year and any category of interest (Product family/ Item) to easily sieve through the data for any demand patterns, check for trends or seasonality (if any)
• Execute Internal forecast generation, relying on forecasting methods like:
1. Moving Average (MA)
2. Exponential Smoothing (ES)
3. Double Exponential Smoothing (Holt’s Method)
4. Holt – Winter’s Method
5. Croston’s Method
6. ARIMA Model
