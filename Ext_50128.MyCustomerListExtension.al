pageextension 50128 MyCustomerListExt extends "item List"
{
    trigger OnOpenPage();
    begin
        report.Run(Report::LAB_CustomerList);
    end;
}