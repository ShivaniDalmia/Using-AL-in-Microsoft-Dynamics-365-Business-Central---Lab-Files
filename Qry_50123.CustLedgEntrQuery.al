query 50123 CustLedgEntrQuery
{
    QueryType = Normal;
    Caption = 'Cus Ledg Entry';
    OrderBy = descending("Sum_Amount_LCY");
    TopNumberOfRows = 10;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {

            }



            dataitem(Cust_Ledger_Entry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = "Document Type" = filter(Invoice | "Credit Memo");

                column("Sum_Amount_LCY"; "Amount (LCY)")
                {
                    Method = Sum;
                }


            }
        }




    }
}