pageextension 50113 ItemCardExtension extends "Item Card"
{



    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Functions)
        {
            action(ImportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Import Item Picture';

                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportitemPicture(Rec);
                end;


            }
            action(ExportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Export Item Picture';
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
        // Add changes to page actions here
    }


}