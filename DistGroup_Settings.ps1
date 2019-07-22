Write-Host "Sync must be complete before running this script.`n"
Pause

$distGroup = Read-Host "Please enter the distribution group email address "

$test = $false
while($test -eq $false){
    $response = Read-Host "`nYou've entered $distGroup. Is this correct? (Y/N)."

    if($response -eq "Y"){
        $test = $true
    }
    else{
        $test = $false
        $distGroup = Read-Host "Please enter the distribution group email address "
        $test = $false
    }
}

Write-Host "`ngam update group $distGroup who_can_invite NONE_CAN_INVITE"
gam update group $distGroup who_can_invite NONE_CAN_INVITE

Write-Host "`ngam update group $distGroup who_can_join invited_can_join"
gam update group $distGroup who_can_join invited_can_join

Write-Host "`ngam update group $distGroup who_can_post_message anyone_can_post"
gam update group $distGroup who_can_post_message anyone_can_post

Write-Host "`ngam update group $distGroup who_can_view_membership all_in_domain_can_view"
gam update group $distGroup who_can_view_membership all_in_domain_can_view

Write-Host "`ngam update group $distGroup allow_web_posting false"
gam update group $distGroup allow_web_posting false

Write-Host "`ngam update group $distGroup members_can_post_as_the_group false"
gam update group $distGroup members_can_post_as_the_group false

Write-Host "`ngam update group $distGroup spam_moderation_level silently_moderate"
gam update group $distGroup spam_moderation_level silently_moderate

Write-Host "`ngam update group $distGroup who_can_leave_group NONE_CAN_LEAVE"
gam update group $distGroup who_can_leave_group NONE_CAN_LEAVE

Write-Host "`n"
Pause