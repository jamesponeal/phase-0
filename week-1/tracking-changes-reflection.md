How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows a programmer to easily view and/or revert back to a previous version of the code, and also allows multiple programmers to work on different sections of code and for them to be merged together into a master file.

What is a commit?
A commit is when you take a file, or group of files, which you have already added to the stage, and 'save' them to be uploaded to the repository.

What are the best practices for commit messages?
The first line should be a short description, similar to a subject line on an email.  Write verbs in the imperative form.  If a more detailed explanation is necessary, wrap the text at 72 columns.

What does the HEAD^ argument mean?
HEAD is the commit version you are currently on. HEAD^ is the last (most recent) commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
3 stages are: 1) working file, 2) Added to the Stage, 3) Committed
You move a file from working to added to the stage by using "git add".
You move a file from the stage to committed by using "git commit"


Write a handy cheatsheet of the commands you need to commit your changes?
git add ./ - Adds the files and folders in your current working directory to the stage so they are ready to be committed.
git commit -m "your commit message here" - Commits the files in the stage to be pulled into GitHub and merged.

What is a pull request and how do you create and merge one?
A pull request is done from GitHub after a file or group of files has been committed.  You do this by navigating to the repository you have been working with and clicking "pull requests" on the right side of the screen, then "new pull request", then select the two forks to compare, then click "merge pull request" and finally confirm the merge.

Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it gives the opportunity for review before the files are merged with the master.