CREATE TABLE Address (
    adressID INT IDENTITY PRIMARY KEY,
    addressLine varchar(100) NOT NULL,
    suburb varchar(50) NOT NULL,
    postcode varchar(10) NOT NULL,
    region varchar(50) NOT NULL,
    country varchar(50) NOT NULL
);

CREATE TABLE Customers (
    customerID INT IDENTITY PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mainPhoneNumber VARCHAR(15) NOT NULL,
    secondaryPhoneNumber VARCHAR(15),
    addressID INT,
    FOREIGN KEY (addressID) REFERENCES Customers(addressID)
);

CREATE TABLE ItemCategorise (
    categoryID INT IDENTITY PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL,
    parentCategoryID INT, 
    FOREIGN KEY (parentCategoryID) REFERENCES ItemCategorise(parentCategoryID)
);

CREATE TABLE Item (
    itemID INT IDENTITY PRIMARY KEY,
    itemName VARCHAR(150) NOT NULL,
    itemDescription VARCHAR(MAX) NOT NULL,
    itemCost DECIMAL(10,2) NOT NULL,
    itemImage VARCHAR(MAX) NOT NULL,
    categoryID INT,
    FOREIGN KEY (Item) REFERENCES Item(categoryID)
)

CREATE Table CustomersOrders (
    orderNumber	INT	IDENTITY PRIMARY KEY,
    customerID INT,
    orderDate DATE NOT NULL, DEFAULT GetDate(),
    totalValue DECIMAL(10,2) NOT NULL,
    datePaid DATE,
    FOREIGN Key (customerID) REFERENCES CustomersOrders(customerID)
)

CREATE TABLE ItemsinOrder (
    orderNumber	INT,
    ItemID INT,
    numberOf INT NOT NULL, DEFAULT 1,
    FOREIGN Key (orderNumber) REFERENCES ItemsinOrder(orderNumber),
    FOREIGN Key (ItemID) REFERENCES ItemsinOrder(ItemID)
)

CREATE TABLE Reviews (
    customerID INT,
    itemID INT,
    reviewDate DATE NOT NULL, DEFAULT GetDate(),
    rating	INT	NOT NULL CHECK(rating BETWEEN 1 AND 5),
    reviewDescription VARCHAR(MAX) NOT NULL,
    FOREIGN Key (customerID) REFERENCES Reviews(customerID),
)
