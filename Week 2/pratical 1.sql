CREATE TABLE Address (
    AddressID INT IDENTITY PRIMARY KEY,
    AddressLine VARCHAR(100) NOT NULL,
    Suburb VARCHAR(50) NOT NULL,
    Postcode VARCHAR(10) NOT NULL,
    Region VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT IDENTITY PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    MainPhoneNumber VARCHAR(15) NOT NULL,
    SecondaryPhoneNumber VARCHAR(15),
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE ItemCategories (
    CategoryID INT IDENTITY PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    ParentCategoryID INT,
    FOREIGN KEY (ParentCategoryID) REFERENCES ItemCategories(CategoryID)
);

CREATE TABLE Items (
    ItemID INT IDENTITY PRIMARY KEY,
    ItemName VARCHAR(150) NOT NULL,
    ItemDescription VARCHAR(MAX) NOT NULL,
    ItemCost DECIMAL(10,2) NOT NULL,
    ItemImage VARCHAR(MAX) NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES ItemCategories(CategoryID)
);

CREATE TABLE CustomersOrders (
    OrderNumber INT IDENTITY PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL DEFAULT GetDate(),
    TotalValue DECIMAL(10,2) NOT NULL,
    DatePaid DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE ItemsinOrder (
    OrderNumber INT,
    ItemID INT,
    NumberOf INT NOT NULL DEFAULT 1,
    FOREIGN KEY (OrderNumber) REFERENCES CustomersOrders(OrderNumber),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Reviews (
    CustomerID INT,
    ItemID INT,
    ReviewDate DATE NOT NULL DEFAULT GetDate(),
    Rating INT NOT NULL CHECK (Rating BETWEEN 1 AND 5),
    ReviewDescription VARCHAR(MAX) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

