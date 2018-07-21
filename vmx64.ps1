$vms = Import-Csv vmx64.csv
Foreach ($vm in $vms)
{
    Set-VM $vm.Name -NumCpu 4 -MemoryGB 8 -Confirm:$false
}