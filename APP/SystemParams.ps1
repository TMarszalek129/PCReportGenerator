function Get-CPU(){
    Get-CimInstance Win32_Processor | Select-Object -ExpandProperty LoadPercentage
}

function Get-RAM(){
    $Memory = Get-CimInstance Win32_OperatingSystem
    $TotalMemory = $Memory.TotalVisibleMemorySize
    $FreeMemory = $Memory.FreePhysicalMemory
    
    ($TotalMemory - $FreeMemory) / $TotalMemory * 100
}

function Get-Discs(){
    Get-Partition | Where-Object {$_.DriveLetter -ne [char]"`0"} | Select-Object -Property DriveLetter,Size
}