"Finding radio..."
$bcom = Get-PnpDevice -FriendlyName '*Broadcom*'
$bcomStatus = $bcom.Status
"Found radio: $bcom"
"Status is: $bcomStatus"

if ($bcomStatus -eq "OK") {
  "Disabling radio..."
  Disable-PnpDevice $bcom.InstanceId -Confirm:$false
}
else {
  "Enabling radio..."
  Enable-PnpDevice $bcom.InstanceId -Confirm:$false
}