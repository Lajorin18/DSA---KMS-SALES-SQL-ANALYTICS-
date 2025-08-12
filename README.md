**KMS Sales Analysis — SQL Case Study**
**Project Description**
This project analyzes sales performance, customer behavior, and shipping efficiency for the fictional KMS dataset using T-SQL.
The dataset covers orders from 2009–2012, including product categories, sales figures, shipping methods, and customer segments.
The analysis focuses on identifying the top-performing products, most valuable customers, cost-effective shipping modes, and areas for business improvement.

**🛠 Tools Used**
1. Microsoft SQL Server — database management and query execution
2. SQL — for data extraction, cleaning, and analysis
3. Common Table Expressions (CTEs)
4. Window Functions (RANK())
5. Aggregate Functions (SUM, ROUND)
6. Joins & Filtering (WHERE, GROUP BY, ORDER BY)

**Project Objectives**
- Identify the highest-selling product category.
- Find the top 3 and bottom 3 regions by sales.
- Calculate total sales for specific products in certain regions.
- Determine the bottom 10 customers and suggest strategies for improvement.
- Identify the most expensive shipping method.
- Find top 10 valuable customers and their purchased categories.
- Identify the small business and corporate customers with the highest orders/sales.
- Compare shipping cost vs. profit to optimize logistics.

**1️. Highest-Selling Product Category**
The SQL analysis revealed that Technology was the highest-selling product category across all regions and years. This category outperformed Furniture and Office Supplies, generating the most revenue both in large metropolitan regions and smaller provinces. The strong sales can be attributed to the rapid adoption of computers, printers, and office electronics during the dataset period (2009–2012). Businesses and corporate clients appeared to make large bulk purchases, driving up the total figures. This suggests that marketing budgets and promotional campaigns should continue to prioritize Technology products as a key growth driver for the business.

**2. Top 3 and Bottom 3 Regions by Sales**
From the ranking queries, Ontario, Alberta, and Quebec consistently appeared as the top three performing provinces in terms of total sales volume. These provinces are major commercial hubs with dense populations, explaining their higher order volumes and product variety. On the other end, Nunavut, Northwest Territories, and Yukon had the lowest sales figures in the dataset. These regions are geographically remote, with smaller populations and higher logistics costs, which may limit sales opportunities. This insight suggests that while the top regions should continue to receive strong marketing investment, a different sales strategy is needed for low-performing remote areas, possibly involving regional partnerships or bundled shipments.

**3. Total Sales for a Specific Product in a Region**
When the query filtered for a specific combination — for example, Appliances in Ontario — the data showed that certain product-region pairings can be disproportionately profitable. Ontario had strong sales in Appliances, driven by both individual consumers and business purchases for offices and facilities. This level of targeted analysis allows decision-makers to identify niche opportunities that may not be obvious in total sales figures alone. It also shows that certain provinces may have unique demands based on climate, lifestyle, or industrial activity. By focusing promotions on products that align with regional preferences, the business can achieve higher conversion rates and better ROI on marketing spend.
**4. Bottom 10 Customers**
The query ranking customers by total orders and sales revealed the bottom 10 least active customers in the dataset. These customers made few purchases over the four years, often with low transaction values. While it may be tempting to focus solely on top buyers, understanding why these customers spend less is equally important for business growth. They may be unaware of the company’s full product range, dissatisfied with service, or sensitive to pricing. Offering them loyalty incentives, seasonal discounts, or targeted re-engagement campaigns could help convert them into more valuable, repeat customers.

**5. Most Expensive Shipping Method**
The analysis of shipping costs showed that Express Air had the highest average and total shipping expense across all transactions. While costly, this method was often used for urgent or high-value orders, especially from corporate clients. This suggests that although expensive, Express Air is not necessarily inefficient — it serves a clear market need. However, it is important to balance its use, ensuring that high shipping costs are offset by sufficient profit margins. The insight here is not to cut Express Air entirely, but to apply it strategically for orders where delivery speed justifies the cost.

**6. Top 10 Valuable Customers & Purchased Categories**
The ranking query showed that the top 10 customers by sales value were responsible for a significant share of total revenue. Interestingly, these customers predominantly purchased Technology and Furniture, highlighting a strong preference for high-ticket items. This means that premium products have a disproportionately large impact on revenue, and retaining these customers is critical. Strategies such as dedicated account managers, early product access, and VIP discounts could help maintain their loyalty. Additionally, analyzing their purchase cycles could inform predictive stocking and targeted upselling opportunities.

**7. Highest Small Business & Corporate Customers**
When segmenting customers by business type, the data revealed that SB-4512 (a small business) and CO-2891 (a corporate client) were the top performers in their respective categories. These customers not only bought in high volumes but also purchased consistently over multiple years. This kind of loyalty makes them valuable long-term partners for the business. Small businesses may respond well to financing options or bundled deals, while corporate clients might prefer custom contract terms and bulk order discounts. Understanding these segment-specific needs allows for more precise and profitable customer relationship management.

**8. Shipping Cost vs. Profit**
A comparison of shipping costs and order profits showed that certain shipping methods and regions yield different returns. While Express Air is costly, it often delivers orders with high profit margins, making it worth the expense. On the other hand, Standard Class in remote northern areas had high shipping costs but very low profits, creating an overall negative margin in some cases. This indicates that shipping optimization is necessary — such as consolidating shipments, renegotiating courier contracts, or using regional distribution centers. By aligning shipping methods with profitability, the business can cut waste and improve net earnings.

**9. Regions with High Shipping Cost but Low Profit**
Northern provinces like Yukon, Nunavut, and Northwest Territories stood out for having disproportionately high delivery costs but minimal profit returns. This is likely due to long distances, low population density, and smaller order sizes. In such cases, traditional delivery models may not be cost-effective. A possible solution would be to implement scheduled deliveries, partner with local resellers, or offer incentives for larger order volumes to justify the shipping costs. Without such adjustments, continuing sales in these regions may erode profit margins over time.

**Key Insights**
- Technology and Office Supplies led sales, but certain regions underperformed.
- Top 3 regions contributed disproportionately to total sales — high ROI zones for marketing focus.
- Express Air had the highest shipping cost but also yielded the highest profit margin.
- The bottom 10 customers could be re-engaged through loyalty offers or feedback surveys.
- Some provinces, like Ontario, showed strong niche demand (e.g., appliances).

