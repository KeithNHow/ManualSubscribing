/// <summary>
/// PageExt "KNH CustomerList" extends Customer List 22
/// </summary>
pageextension 52030 "KNH CustomerList" extends "Customer List"
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
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Category7;
                PromotedOnly = true;
                RunObject = page "KNH TestPage";
            }
        }
    }
}