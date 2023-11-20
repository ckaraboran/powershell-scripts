## README: Git Pull Force Command for Windows

### Overview

This README details the setup and usage of the `git pullforce` command on Windows. This custom command streamlines the process of force pulling changes from a Git repository, ensuring your local branch is in sync with the remote branch by discarding any local changes.

### Setup Instructions

#### 1. Allow Script Execution (If Necessary)

If your system's policy restricts executing scripts, you might need to modify it. Run PowerShell as Administrator and execute:

```powershell
Set-ExecutionPolicy RemoteSigned
```

Choose 'Yes' to allow the execution of scripts.

#### 2. Add a Git Alias for the Script

To create a Git alias that calls this PowerShell script, execute the following command:

```bash
git config --global alias.pullforce '!powershell.exe -ExecutionPolicy Bypass -File C:/path/to/pullforce.ps1'
```

Replace `C:/path/to/pullforce.ps1` with the full path to your `pullforce.ps1` script.

### Usage

After completing the setup, you can use the `git pullforce` command as follows:

- To force pull the current branch:
  ```bash
  git pullforce
  ```

- To force pull a specific branch:
  ```bash
  git pullforce <branchName>
  ```

### Important Notes

- **Caution**: This command will **permanently delete** any local changes that are not committed.
- Use this command only if you are sure you do not need the local changes.
- Always ensure you have backups of important work before using this command.

### Support

For any queries or issues related to the `git pullforce` command, please open an issue in this repository.
