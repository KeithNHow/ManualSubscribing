/// <summary>
/// PermSet "KNH Manual Subs" (ID 52030).
/// </summary>
permissionset 52030 "KNH Manual Subs"
{
    Assignable = true;
    Caption = 'Manual Subscriptions', MaxLength = 30;
    Permissions =
        codeunit "KNH ManualSubscriber" = X,
        codeunit "KNH AutoSubscriber" = X,
        page "KNH TestPage" = X;
}
