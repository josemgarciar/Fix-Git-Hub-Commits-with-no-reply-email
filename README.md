# Fix-Git-Hub-Commits-with-no-reply-email

## How to use?
1. First, you have to clone the repository that you want to change with ".git" extension.
> [!TIP]
> To make that you only have to go to your git hub repository, copy the URL and put the next >script in the terminal
> ``git clone --bare <Your repository URL>``
2. Open the folder in the powershell or bash terminal
3. Change the git bash script updating it with your personal information
4. Copy it in the terminal and execute
5. To check that all changes have been done correctly you can use
    	``git log``
6. Finally, to upload all changes: 
    ``git push --force --tags origin 'refs/heads/*'``

### Thanks
Base script from https://github.com/timsully/
