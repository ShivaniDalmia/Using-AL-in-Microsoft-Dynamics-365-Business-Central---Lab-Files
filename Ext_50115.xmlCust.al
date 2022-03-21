pageextension 50115 CustXMLExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("&Customer")
        {
            action("Export to XML")
            {
                Image = CompareCOA;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Report;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Xmlport.Run(50114);
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}