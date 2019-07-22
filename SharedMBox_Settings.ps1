Write-Host "Sync must be complete before running this script.`n"
Pause

$SharedMBox = Read-Host "Please enter the Shared Mailbox group email address "

$test = $false
while($test -eq $false){
    $response = Read-Host "`nYou've entered $SharedMBox. Is this correct? (Y/N)."

    if($response -eq "Y"){
        $test = $true
    }
    else{
        $test = $false
        $SharedMBox = Read-Host "Please enter the distribution group email address "
        $test = $false
    }
}

Write-Host "`ngam update group $SharedMBox message_moderation_level moderate_none"
gam update group $SharedMBox message_moderation_level moderate_none

Write-Host "`ngam update group $SharedMBox allow_external_members false"
gam update group $SharedMBox allow_external_members false

Write-Host "`ngam update group $SharedMBox who_can_invite NONE_CAN_INVITE"
gam update group $SharedMBox who_can_invite NONE_CAN_INVITE

Write-Host "`ngam update group $SharedMBox who_can_join invited_can_join"
gam update group $SharedMBox who_can_join invited_can_join

Write-Host "`ngam update group $SharedMBox who_can_post_message anyone_can_post"
gam update group $SharedMBox who_can_post_message anyone_can_post

Write-Host "`ngam update group $SharedMBox  who_can_view_membership all_in_domain_can_view"
gam update group $SharedMBox  who_can_view_membership all_in_domain_can_view

Write-Host "`ngam update group $SharedMBox members_can_post_as_the_group false"
gam update group $SharedMBox members_can_post_as_the_group false

Write-Host "`ngam update group $SharedMBox spam_moderation_level allow`n"
gam update group $SharedMBox spam_moderation_level allow

Write-Host "`ngam update group $SharedMBox who_can_leave_group NONE_CAN_LEAVE"
gam update group $SharedMBox who_can_leave_group NONE_CAN_LEAVE

Write-Host "`ngam update group $SharedMBox is_archived true"
gam update group $SharedMBox is_archived true

Write-Host "`nNow in the Admin Panel -- In the group $SharedMBox, Go to members, select all, change emailing to None`n"
Pause