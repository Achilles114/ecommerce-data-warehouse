-- DimCustomer
CREATE TABLE DimCustomer (
    CustomerID INT PRIMARY KEY,
    Country NVARCHAR(100)
);

-- DimProduct
CREATE TABLE DimProduct (
    StockCode VARCHAR(10) PRIMARY KEY,
    Description NVARCHAR(255),
    UnitPrice FLOAT
);

-- DimDate
CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,
    FullDate DATE,
    Year INT,
    Month INT,
    Day INT,
    DayOfWeek INT,
    Quarter INT
);

-- FactSales
CREATE TABLE FactSales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(10),
    CustomerID INT,
    DateID INT,
    Quantity int
    TotalPrice FLOAT,
    FOREIGN KEY (StockCode) REFERENCES DimProduct(StockCode),
    FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (DateID) REFERENCES DimDate(DateID)
);
