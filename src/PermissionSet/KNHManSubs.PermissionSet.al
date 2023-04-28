/// <summary>
/// PermSet "KNH_ManSubs" (ID 52030).
/// </summary>
permissionset 52030 KNH_ManSubs
{
    Assignable = true;
    Caption = 'KNH_ManSubs', MaxLength = 30;
    Permissions =
        codeunit KNH_ManualSubscriber = X,
        codeunit KNH_AutoSubscriber = X,
        page KNH_TestPage = X;
}
