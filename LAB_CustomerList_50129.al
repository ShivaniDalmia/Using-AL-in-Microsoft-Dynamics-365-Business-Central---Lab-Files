report 50105 LAB_CustomerList
{
 CaptionML = ENU = 'LAB_CustomerList';
 RDLCLayout = 'layouts/LAB_CustomerList.rdl';
 WordLayout = 'layouts/LAB_CustomerList.docx';

 PreviewMode = Normal;
 WordMergeDataItem = Customer;

 dataset
 {
 dataitem(Customer; Customer)
 {
 DataItemTableView = SORTING(Name);
 column(No; "No.")
 {
 IncludeCaption = true;
 }
 column(Name; Name)
 {
 IncludeCaption = true;
 }
 column(Balance; "Balance (LCY)")
 {
 IncludeCaption = true;
 }
 }
 }
}