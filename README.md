
**# DataAnalytics**

_Integrantes_


| Id | Apellido | Nombre |
|------------- | ------------- | ------------- |
| 01 | Martinez|Juan 

<details>
<summary><h3>Primera entrega 18/10.</summary>
<p>

## Descripción de la temática.
  - Este trabajo consiste en hacer una análisis de la base de datos suministrada por el curso. 
  En este caso se toma la tabla de Production.TransactionHistory para hacer una análisis del historial de ventas de acuerdo a los productos de la tabla Production.Product y las tablas Production.ProductCategory, Production.ProductSubcategory.
  En estas tablas no se toman todas las columnas para su análisis, si no las necesarias para relevar la información pertinente.
    
## Tipo de Análisis.
  - Se va analizar:
    - Cantidad de ventas realizadas por año.
    - Cantidad de ventas realizadas por mes. 
    - Las ganancias de las ventas por año/mes.     
    - Cantidad de productos vendidos, según subcategoría o categoría.
    - Diferencia de los períodos en cuanto a ventas y productos.
    
## Tablas utilizadas.
  - Production.TransactionHistory
  - Production.Product
  - Production.ProductCategory
  - Production.ProductSubcategory

## Diseño Tablas.
   - Production.TransactionHistory
        | ColumnName  | DataType |
        | ------------- | ------------- |
        | TransactionsID | int |
        | ProductID      |int  |
        | TransactionDate |datetime|
        |  TransactionType   |nchar(1)|
        |  Quanty   |int|
        |  ActualCost|money|
        
   - Production.Product
        | ColumnName | DataType |
        | ------------- | ------------- |
        |  ProductID | int |
        |  Name | nvarchar(50) |
        |  ProductNumber | nvarchar(25) |
        |  Color | nvarchar(15) |
        |  StandardCost | money |
        |  ListPrice | money |
        |  ProductSubcategoryID | int |
        
   - Production.ProductSubcategory
        | ColumnName  | DataType |
        | ------------- | ------------- |
        |ProductSubcategoryID|int|
        |ProductCategoryID|int|
        |Name|nvarchar(50)|
   - Production.ProductCategory
        | ColumnName  | DataType |
        | ------------- | ------------- |
        |ProductCategoryID|int|
        |Name|nvarchar(50)|


</p>
</details>

<details>
<summary><h3>Segunda entrega 03/11.</summary>
<p>
 
## Objetivo del Proyecto.
- El objetivo de esta segunda entrega es difinir los diagrama de clases que vamos a utilizar para entender el dominio del problema y los datos que serán
	utilizados para la presentación en BI.
	
## Alcance.
- El alcance del proyecto es terminar haciendo un dashboard en power Bi haciendo un análisis de las ventas que tenemos en nuestro dataset, según ciertos KPIS
	difinidos en la primera entrega.
	
## Usuario final y nivel de aplicación del análisis.
- El proyecto sirve para aquellas personas que toman dicisiones sobre las ventas y los productos que se vende. Por lo tanto el usuario final de la presentación
	puede ser un generente de ventas o alguien mas operativo como un coordinador para saber que tiene que hacer foco. La aplicación que tiene el mismo
	es poder ver como fluctuan la cantidad de ventas por los periodos en cuestión y sobre los productos mas vendidos.
	
## Diagrama Entidad Relación.
- A continuación el diagrama
```mermaid
flowchart TB
style A fill: #A5D6A7,color: black
style 2 fill:#E1BEE7,color: black
style 1 fill: #E1BEE7,color: black
style 3 fill: #E1BEE7,color: black
style 4 fill: #E1BEE7,color: black
style 5 fill: #E1BEE7,color: black
style 6 fill: #E1BEE7,color: black
A(Production.TransactionHistory) --1:N--> B{Detalla}
style B fill: #FFF59D,color: black
subgraph  
	A -->2((ProductID))
	A -->1((TransactionsID))
	A -->3((TransactionDate))
	A -->4((TransactionType))
	A -->5((Qyanty))
	A -->6((ActualCost))
end
B --> C(Production.Product)
style C fill: #A5D6A7,color: black
style 7 fill:#E1BEE7,color: black
style 9 fill: #E1BEE7,color: black
style 10 fill: #E1BEE7,color: black
style 11 fill: #E1BEE7,color: black
style 12 fill: #E1BEE7,color: black
style 13 fill: #E1BEE7,color: black
style 14 fill: #E1BEE7,color: black
C--1:1-->D{Tiene}
style D fill: #FFF59D,color: black
subgraph  
	C -->7((ProductID))
	C -->9((Name))
	C -->10((ProductNumber))
	C -->11((Color))
	C -->12((StandardCosts))
	C -->13((ListPrice))
	C -->14((ProductSubcategoryID))
end
D-->E(Production.ProductSubcategory)
style E fill:#A5D6A7,color: black
style 15 fill:#E1BEE7,color: black
style 16 fill: #E1BEE7,color: black
style 17 fill: #E1BEE7,color: black
E--1:1-->F{Tiene}
style F fill: #FFF59D,color: black
subgraph  
	E -->15((ProductSubcategoryID))
	E -->16((ProductCategoryID))
	E -->17((Name))
end
F-->G(Production.ProductCategory)
style G fill: #A5D6A7,color: black
style 18 fill:#E1BEE7,color: black
style 19 fill: #E1BEE7,color: black
subgraph  
	G -->18((ProductCategoryID))
	G -->19((Name))
end

```
## Listado Tablas.
   - 
        | Production.TransactionHistory  |   |
        | ------------- | ------------- |
        | TransactionsID | PK |
        | ProductID      | FK  |
        | TransactionDate | |
        |  TransactionType   | |
        |  Quanty   | |
        |  ActualCost||
        
   - 
        | Production.Product | |
        | ------------- | ------------- |
        |  ProductID | PK |
        |  Name | |
        |  ProductNumber | |
        |  Color | |
        |  StandardCost | |
        |  ListPrice | |
        |  ProductSubcategoryID | FK |
        
   - 
        | Production.ProductSubcategory  | |
        | ------------- | ------------- |
        |ProductSubcategoryID| PK |
        |ProductCategoryID| FK |
        |Name| |
   - 
        | Production.ProductCategory  | |
        | ------------- | ------------- |
        |ProductCategoryID|PK|
        |Name| |



	
## Listado de columnas de cada tabla.

```mermaid
erDiagram

 ProductionTransactionHistory {
        TransactionsID	int PK
	ProductID	int FK
	TransactionDate	datetime
	TransactionType	nchar1
	Quanty	int
	ActualCost	money
 }
 ProductionProduct {
        ProductID	int PK
	Name	nvarchar50
	ProductNumber	nvarchar25
	Color	nvarchar15
	StandardCost	money
	ListPrice	money
	ProductSubcategoryID	int FK
 }
 
 ProductionProductSubcategory {
        ProductSubcategoryID	int PK
	ProductCategoryID	int FK
	Name	nvarchar50
 }
 ProductionProductCategory {
        ProductCategoryID	int PK
	Name	nvarchar50
 }
```

</p>
</details>

<details open>
<summary><h3>Tercera entrega 08/12.</summary>
<p>
 
## Objetivo del la entrega.
- En esta entrega se solicita la confección de un dashboard en powerbi, junto a ciertas condiciones para su realización.
## Archivos
- Se cargaron todos los archivos
  - Querys
    - Se cargaron todos los archivos .sql que fueron utilizados.
  - Icosnos/imagenes
    - Se cargaron las imagenes e iconos que fueron utilizados.
  - Backup
    - Se subio el .bak para que se puedan levantar y ver los datos que hay dentro que fueron utilizados.
  - Tablero
    - Se subió el tablero generado .pbix .
## Transformaciones Realizadas
 - Base de datos
   - Se realizó un cast() a la columna de TransactionDate para pasarlo a date de datetime. 
   - Se realizó un _case when_ en la columna TransactionType para poder identificar que tipo de order era.
   - Se realizó un cast() a decimal con solo dos lugares después de la coma de la columna ActualCost. 
   - Se realizó la creación de una columa nueva para identificar al precio final la transacción. se multiplica ActualCost por Quantity para obtener TotalPrice.
- Power Query
   - Se crearon las relaciones entre las distintas tablas para que quedara todo en una sola tabla TransactionHistory, se hizo combinar querys con el _inner join_ para buscar aquellos productos que tienen una subcategoria y categoria para poder realizar el análisis.
   - Se crearon 3 referencias de la tabla TransactionHistory, cada una con un filtro distinto para poder diferenciar que tipo de _order_ es, para así tener un análisis mas rápido y cálculos sencillos.
   - Se creó una columna nueva que extrae el año de la fecha de venta para realizar un cálculo mas sencillo.
- Power bi
   - Se creó automáticamente el modelo relacional después de crear las conexiones en power query.
	
## Medidas y Fórmulas
- Tablas
   - Se creó una tabla de Totales para utilizarla para medidas generales de diferentes _orders_.
- Medidas
   - La medida Profit sirve para saber la ganancias netas de la empresa.
    ```ruby
	VAR ventas =
	CALCULATE(
		SUM('Total'[TotalPrice]),
		'Total'[TransactionType] IN { "SalesOrder" }
	)
	VAR  compras = CALCULATE(
		SUM('Total'[TotalPrice]),
		'Total'[TransactionType] IN { "PurchaseOrder" }
	)
	VAR  trabajos = CALCULATE(
		SUM('Total'[TotalPrice]),
		'Total'[TransactionType] IN { "WorkOrder" }
	)
	RETURN
	(trabajos + ventas) - compras
    ```
  - La medida Product se calcula la cantidad de productos por _order_ por lo tanto se reemplaza la palabra clave (ejemplo WorkOrders). Por más que se use la función sum(), no suma porque la cantidad de valores es uno.
   ```ruby
	ProductWork = 
	CALCULATE(
		SUM('Total'[TotalProduct]),
		'Total'[TransactionType] IN { "WorkOrder" }
	)
   ```
  - La medida Price sirve para saber el monto total dependiendo de la _order_, se reemplaza la palabra clave (ejemplo WorkOrders). Por más que se use la función sum(), no suma porque la cantidad de valores es uno.
   ```ruby
	PriceWork = 
	CALCULATE(
		SUM('Total'[TotalPrice]),
		'Total'[TransactionType] IN { "WorkOrder" }
	)
   ```
  - La medida Porcentaje sirve para saber en porciento el rendimiento de la empresa de un año a otro dependiendo del _order_. Para saber de los otros hay que cambiar la tabla, donde dice WorkOrder van las otras que se hizo en power query (Los cálculos de los años son fijos pero se pueden hacer dinámicos utilizando una variable que tome la fecha actual y extrayendo el año).
   ```ruby
	PorcentajeWork = 
	VAR ventas14 =
	CALCULATE(
		SUM('WorkOrder'[TotalPrice]),
		'WorkOrder'[DateYear] IN { 2014 }
	)
	VAR  ventas13 = CALCULATE(
		SUM('WorkOrder'[TotalPrice]),
		'WorkOrder'[DateYear] IN { 2013 }
	)

	
	RETURN
	((ventas14-ventas13)/ventas13)
   ```

</p>
</details>



 
 
