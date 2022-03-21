page 50103 "course page"
{
    PageType = List;
    CardPageId = "Course card";//use id if you want
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course_mgmt;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Groupname)
            {
                field(code; Rec.code)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

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
        area(Reporting)
        {
            action("Resource Card")
            {
                ApplicationArea = All;
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor code");
                // Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin


                end;
            }
        }
    }

    var
        myInt: Integer;
}