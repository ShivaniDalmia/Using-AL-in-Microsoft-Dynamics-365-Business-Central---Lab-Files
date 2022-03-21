pageextension 50111 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;

            }
            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;

            }
            field(Instagrame; Rec.Instagrame)
            {
                ApplicationArea = All;

            }
            field(Linkedln; Rec.Linkedln)
            {
                ApplicationArea = All;
                ExtendedDatatype = URL;

            }

        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}