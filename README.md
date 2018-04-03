# Windows Tools (win_tools)

<img src="res/nyan_windows.gif" alt="NYAN WIN" width="400px">

Windows Tools (win_tools) is a PowerShell script collection tailored for system administration tasks on Windows environments. It simplifies operations like process management, disk usage analysis, service control, registry querying, and system information retrieval.

## Prerequisites

- Windows operating system.
- Windows PowerShell (with execution policy set to `RemoteSigned` or `Unrestricted`).

## How to Use

To use win_tools, follow these simple steps:

1. **Open PowerShell:**
   Launch PowerShell, preferably as an administrator if you're planning to perform actions that require administrative privileges.

2. **Load the Script:**
   Navigate to the directory containing `win_tools.ps1`. Load the functions into your PowerShell session by running:

   ```powershell
   . .\win_tools.ps1
   ```

3. **Execute Functions:**
   Once the script is loaded, you can call any of the functions directly. Here are some examples:

   - List all running processes:

     ```powershell
     list_processes
     ```

   - Show disk usage for all drives:

     ```powershell
     show_disk_usage
     ```

   - Start a specific Windows service:

     ```powershell
     manage_service -service_name "NameOfService" -action Start
     ```

   - Query a specific registry path:

     ```powershell
     query_registry -path "HKLM:\Software\PathToQuery"
     ```

   - Display detailed system information:

     ```powershell
     show_system_info
     ```

   - Check network connectivity to a host:

     ```powershell
     check_network_connectivity -host "www.example.com"
     ```

   - List all installed programs:

     ```powershell
     list_installed_programs
     ```

   - Get specific Windows event logs:

     ```powershell
     get_event_logs -logName "Application"
     ```

   - Retrieve a list of user accounts:

     ```powershell
     get_user_accounts
     ```

   - Check the status of a specific service:

     ```powershell
     check_service_status -service_name "NameOfService"
     ```

   - Free up unused memory:

     ```powershell
     free_up_memory
     ```

   - Backup a specific registry key:

     ```powershell
     backup_registry_key -keyPath "HKLM:\Software\KeyToBackup" -backupPath "C:\BackupPath\Backup.reg"
     ```

   - Restart the computer after a delay:

     ```powershell
     restart_computer -delayInSeconds 60
     ```

Feel free to experiment with these functions and incorporate them into your regular system administration tasks.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
