DROP TABLE LINE_ITEM;
DROP TABLE INVOICE;
DROP TABLE PRODUCT;

CREATE TABLE INVOICE(
InvoiceNumber int PRIMARY KEY not null,
InvoiceDate date not null DEFAULT '01-jan-2000',
SubTotal float(2) not null,
TacPct float(2) not null,
Total float(2) not null)

CREATE TABLE PRODUCT(
ProductNumber int PRIMARY KEY not null,
ProductType nvarchar(25) not null,
ProductDescription nvarchar(200) not null,
UnitPrice float(2) not null)

CREATE TABLE LINE_ITEM(
InvoiceNumber int not null,
LineNumber int not null,
PruductNumber int not null,
Quantity int not null,
UnitPrice float(2) not null,
Total float(2) not null,
CONSTRAINT LINE_ITEM_FK FOREIGN KEY(InvoiceNumber)
REFERENCES INVOICE(InvoiceNumber),
CONSTRAINT LINE_ITEM_FK2 FOREIGN KEY(PruductNumber)
REFERENCES PRODUCT(ProductNumber),
CONSTRAINT LINE_ITEM_PK PRIMARY KEY (InvoiceNumber, LineNumber)
)

