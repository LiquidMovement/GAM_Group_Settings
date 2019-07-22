Write-Host "Sync must be complete before running this script.`n"
Pause

$SecGroup = Read-Host "Please enter the Security Group email address "

$test = $false
while($test -eq $false){
    $response = Read-Host "`nYou've entered $SecGroup. Is this correct? (Y/N)."

    if($response -eq "Y"){
        $test = $true
    }
    else{
        $test = $false
        $SecGroup = Read-Host "Please enter the distribution group email address "
        $test = $false
    }
}

Write-Host "`ngam update group $SecGroup message_moderation_level moderate_all_messages"
gam update group $SecGroup message_moderation_level moderate_all_messages

Write-Host "`ngam update group $SecGroup allow_external_members false"
gam update group $SecGroup allow_external_members false

Write-Host "`ngam update group $SecGroup who_can_invite NONE_CAN_INVITE"
gam update group $SecGroup who_can_invite NONE_CAN_INVITE

Write-Host "`ngam update group $SecGroup who_can_join invited_can_join"
gam update group $SecGroup who_can_join invited_can_join

Write-Host "`ngam update group $SecGroup who_can_post_message none_can_post"
gam update group $SecGroup who_can_post_message none_can_post

Write-Host "`ngam update group $SecGroup  who_can_view_membership all_managers_can_view"
gam update group $SecGroup  who_can_view_membership all_managers_can_view

Write-Host "`ngam update group $SecGroup allow_web_posting false"
gam update group $SecGroup allow_web_posting false

Write-Host "`ngam update group $SecGroup members_can_post_as_the_group false"
gam update group $SecGroup members_can_post_as_the_group false

Write-Host "`ngam update group $SecGroup spam_moderation_level reject"
gam update group $SecGroup spam_moderation_level reject

Write-Host "`ngam update group $SecGroup include_in_global_address_list false"
gam update group $SecGroup include_in_global_address_list false

Write-Host "`ngam update group $SecGroup show_in_group_directory false"
gam update group $SecGroup show_in_group_directory false

Write-Host "`ngam update group $SecGroup who_can_leave_group NONE_CAN_LEAVE"
gam update group $SecGroup who_can_leave_group NONE_CAN_LEAVE

Write-Host "`n"


Pause