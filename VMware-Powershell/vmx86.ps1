$vms = Import-Csv vmx86.csv
Foreach ($vm in $vms)
{
    Set-VM $vm.Name -NumCpu 4 -MemoryGB 4 -Confirm:$false
}