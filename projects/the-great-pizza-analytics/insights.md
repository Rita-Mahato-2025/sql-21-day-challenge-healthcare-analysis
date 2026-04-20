
** Insights **

** Sales performance **
Classic pizzas dominate with 14,888 units sold — nearly 30% of all 49,574 pizzas moved. The other three categories (Supreme at 11,987, Veggie at 11,649, Chicken at 11,050) are remarkably close to each other, which suggests no category is at risk of dying but also that Classic has a real structural advantage, likely due to name recognition and comfort appeal.

** Pricing **
The average price across all SKUs is $16.44, but the range is extreme — from ~$12 for a small to $35.95 for The Greek XXL. That XXL is the single highest-priced item and roughly 2× the average, which means it's either a premium draw or a rarely-ordered outlier. The self-join analysis confirms a clean size-based pricing ladder: going from S → L typically adds $8 in price, and XL/XXL carry a steep premium.

** Dead inventory — the most actionable finding **
Five pizza-size combinations have literally zero orders: Big Meat L, Big Meat M, Five Cheese M, Five Cheese S, and Four Cheese S. These are costing the kitchen ingredient prep and menu real estate without generating any revenue. The recommendation is either a targeted discount campaign to test demand, or outright removal from the menu.

**Order value distribution **
The top single order was $444.20 (order #18845), nearly 25× the average pizza price — clearly a group or event order. The top 5 orders all exceed $257, suggesting a meaningful high-value segment worth identifying for loyalty or catering outreach.

** Time-based demand **
Evening orders after 8 PM show up prominently, starting from the very first day of data. This is a consistent late-night demand signal that could justify time-specific promotions, delivery staffing, or a "night menu" angle.

** Data quality issues **
Three issues flagged: NULL ingredients exist in the pizza_types table (handled with IFNULL), NULL prices exist in the pizzas table, and there's at least one fully NULL row across all columns — likely a data pipeline or ETL artifact. These need to be addressed at the source before any revenue modelling is done.

