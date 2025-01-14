/// <summary>
/// PermSet "KNH Manual Subs" (ID 52030).
/// </summary>
permissionset 52030 "KNH Manual Subs"
{
    Assignable = true;
    Caption = 'Manual Subscriptions', MaxLength = 30;
    Permissions =
        page "KNH TestPage" = X,
        codeunit "KNH Auto Subscriber" = X,
        codeunit "KNH Manual Subscriber" = X;
}