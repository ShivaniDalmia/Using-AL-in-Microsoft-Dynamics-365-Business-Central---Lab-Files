xmlport 50114 CustXML
{
    Direction = Import;
    Format = VariableText;
    // FormatEvaluate = xml;
    FieldSeparator = '-';
    //FieldDelimiter = '#';
    FileName = 'CustXML.txt';
    UseRequestPage = false;
    schema
    {
        textelement(root)
        {
            tableelement(Customer; Customer)//caption and table name
            {


                RequestFilterFields = "No.";
                fieldattribute(Number; Customer."No.") { }
                fieldattribute(Language; Customer."Language Code") { }


                fieldelement(Name; Customer.Name) { }


                textelement(Address)
                {
                    fieldelement(StreetAndNr; Customer.Address)
                    {
                        fieldattribute(Address2; customer."Address 2") { }
                    }
                    fieldelement(City; Customer.City)
                    {
                        fieldattribute(Zipcode; Customer."Post Code") { }
                    }
                }


                fieldelement(Phone; Customer."Phone No.") { }
            }
        }
    }




    var
        myInt: Integer;
}