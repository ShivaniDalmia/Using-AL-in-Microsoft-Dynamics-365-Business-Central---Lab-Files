table 50101 Course_mgmt
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; code; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Description; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Type; option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Instructor Led","e-Learning","Remote Traning";
        }
        field(5; Duration; Decimal)
        {

            DataClassification = ToBeClassified;
        }
        field(6; Price; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Passing Rate"; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Instructor code"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));
        }
        field(11; "Instructor name"; text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor code")));
        }

    }

    keys
    {
        key(Key1; "code")
        {
            Clustered = true;
        }
        key("Secondary Key1"; "Instructor code")
        {

        }
        key("Secondary Key2"; "Type")
        {

        }
    }


}