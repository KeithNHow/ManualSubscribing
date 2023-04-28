/// <summary>
/// PageExt "KNH_CustomerList" extends Customer List 22
/// </summary>
pageextension 52501 "KNH_CustomerList" extends "Customer List"
{
    actions
    {
        addlast("&Customer")
        {
            action(KNH_TestPage)
            {
                ApplicationArea = All;
                ToolTip = 'Manual Subscribing';
                Caption = 'Manual Subscribing';
                Image = TestFile;
                RunObject = Page KNH_TestPage;
            }
        }
    }
}