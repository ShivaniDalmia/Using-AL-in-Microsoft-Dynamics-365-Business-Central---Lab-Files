table 50126 ZYPurchaseOrderQueryTable
{
DataClassification = CustomerContent;
TableType = Temporary;
fields
{
field(1; RowNo; Integer)
{
Caption = 'Row No.';
DataClassification = CustomerContent;
}
field(10; "Buy-from Vendor No."; Code[20])
{
Caption = 'Buy-from Vendor No.';
DataClassification = CustomerContent;
}
field(20; "Buy-from Vendor Name"; Text[100])
{
Caption = 'Buy-from Vendor Name';
DataClassification = CustomerContent;
}
field(30; "Order Date"; Date)
{
Caption = 'Order Date';
DataClassification = CustomerContent;
}
field(35; "Currency Code"; Code[10])
{
Caption = 'Currency Code';
TableRelation = Currency;
DataClassification = CustomerContent;
}
field(40; "Amount Including VAT"; Decimal)
{
AutoFormatExpression = "Currency Code";
AutoFormatType = 1;
Caption = 'Amount Including VAT';
DataClassification = CustomerContent;
}
field(50; "No."; Code[20])
{
Caption = 'No.';
DataClassification = CustomerContent;
}
field(60; Description; Text[100])
{
Caption = 'Description';
DataClassification = CustomerContent;
}
field(70; Quantity; Decimal)
{
Caption = 'Quantity';
DecimalPlaces = 0 : 5;
DataClassification = CustomerContent;
}
field(80; Amount; Decimal)
{
Caption = 'Amount';
AutoFormatExpression = "Currency Code";
AutoFormatType = 1;
DataClassification = CustomerContent;
}
field(90; Inventory; Decimal)
{
Caption = 'Inventory';
DecimalPlaces = 0 : 5;
DataClassification = CustomerContent;
}
}
keys
{
key(PK; RowNo)
{
Clustered = true;
}
}
}