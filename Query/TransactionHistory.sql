SELECT    
	tra.TransactionID
	,CAST(tra.TransactionDate AS date) AS SalesDate
	,tra.ProductID
	,case when tra.TransactionType like 'W' then 'WorkOrder'
		when tra.TransactionType like 'S' then 'SalesOrder'
		when tra.TransactionType like 'P' then 'PurchaseOrder' end as 'TransactionType'
	, tra.Quantity
	,CAST(tra.ActualCost AS decimal(10, 2)) AS Price
	,CAST(tra.ActualCost AS decimal(10, 2)) * tra.Quantity AS TotalPrice

FROM  Production.TransactionHistory AS tra 

