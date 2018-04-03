# list processes
function list_processes {
    Get-Process
}

# display disk usage
function show_disk_usage {
    Get-PSDrive -PSProvider FileSystem
}

# manage Windows services
function manage_service {
    param (
        [Parameter(Mandatory=$true)]
        [string]$service_name,
        
        [Parameter(Mandatory=$true)]
        [ValidateSet("Start", "Stop", "Restart")]
        [string]$action
    )

    switch ($action) {
        "Start"   { Start-Service $service_name }
        "Stop"    { Stop-Service $service_name }
        "Restart" { Restart-Service $service_name }
    }
}

# perform a registry query
function query_registry {
    param (
        [Parameter(Mandatory=$true)]
        [string]$path
    )

    Get-ItemProperty -Path $path
}

# display system information
function show_system_info {
    Get-ComputerInfo
}

# list processes
function list_processes {
    Get-Process
}

# display disk usage
function show_disk_usage {
    Get-PSDrive -PSProvider FileSystem
}

# manage Windows services
function manage_service {
    param (
        [Parameter(Mandatory=$true)]
        [string]$service_name,

        [Parameter(Mandatory=$true)]
        [ValidateSet("Start", "Stop", "Restart")]
        [string]$action
    )

    switch ($action) {
        "Start"   { Start-Service $service_name }
        "Stop"    { Stop-Service $service_name }
        "Restart" { Restart-Service $service_name }
    }
}

# perform a registry query
function query_registry {
    param (
        [Parameter(Mandatory=$true)]
        [string]$path
    )

    Get-ItemProperty -Path $path
}

# display system information
function show_system_info {
    Get-ComputerInfo
}

# check network connectivity
function check_network_connectivity {
    param (
        [Parameter(Mandatory=$true)]
        [string]$host
    )

    Test-Connection $host -Count 4
}

# list installed programs
function list_installed_programs {
    Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
    Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
    Format-Table -AutoSize
}

# get event logs
function get_event_logs {
    param (
        [Parameter(Mandatory=$true)]
        [string]$logName
    )

    Get-EventLog -LogName $logName
}

# get user accounts
function get_user_accounts {
    Get-LocalUser | Select-Object Name, Enabled, LastLogon
}

# check service status
function check_service_status {
    param (
        [Parameter(Mandatory=$true)]
        [string]$service_name
    )

    Get-Service -Name $service_name | Select-Object Status, Name, DisplayName
}

# free up memory
function free_up_memory {
    [gc]::Collect()
    Clear-Variable -Name * -Scope Global -Exclude PWD, HOME, HOSTNAME
    Remove-Module -Name * -ErrorAction SilentlyContinue
    [gc]::Collect()
}

# backup registry key
function backup_registry_key {
    param (
        [Parameter(Mandatory=$true)]
        [string]$keyPath,
        [Parameter(Mandatory=$true)]
        [string]$backupPath
    )

    Export-RegistryKey -Path $keyPath -Destination $backupPath
}

# restart computer
function restart_computer {
    param (
        [Parameter(Mandatory=$false)]
        [int]$delayInSeconds = 30
    )

    Restart-Computer -Delay $delayInSeconds
}
