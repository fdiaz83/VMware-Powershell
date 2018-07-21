$vms = Import-Csv vms.csv
Foreach ($vm in $vms)
{
Function Enable-MemHotAdd($vm)
    {
    $vmview = Get-vm $vm.Name | Get-View
    $vmConfigSpec = New-Object VMware.Vim.VirtualMachineConfigSpec
    $extra = New-Object VMware.Vim.optionvalue
    $extra.Key="mem.hotadd"
    $extra.Value="true"
    $vmConfigSpec.extraconfig += $extra
    $vmview.ReconfigVM($vmConfigSpec)
    }
}
