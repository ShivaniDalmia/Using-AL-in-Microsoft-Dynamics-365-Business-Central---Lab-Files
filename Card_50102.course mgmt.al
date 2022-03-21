page 50102 "Course Card"
{
    Caption = 'Course card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Course_mgmt;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field(code; Rec.code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ShowMandatory = True;
                    NotBlank = True;



                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    NotBlank = True;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;

                }
                field(Difficulty; Rec.Difficulty)
                {
                    ApplicationArea = All;
                }
                field("Passing Rate"; Rec."Passing Rate")
                {
                    ApplicationArea = All;
                }
                field("Instructor code"; Rec."Instructor code")
                {
                    ApplicationArea = All;
                }
                field("Instructor name"; Rec."Instructor name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Res)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;



}