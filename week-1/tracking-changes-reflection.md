# 1.5 Tracking Changes Reflection

**1. How does tracking and adding changes make developers' lives easier?**

It makes the developers' lives easier by making sort of a history of each project, what I mean by that is at any given moment a developer can look at the change log
and see exactly who, when and what kind of a change was made from the begging of the project untill now. That way finding bugs or errors, and seeing how the project was developed is very easy. Can you imagine if the changes weren't tracked at all? It would be a total chaos.

**2. What is a commit?**

A commit is a Git command that basically creates a save point or a snapshot. Every time you make a commit, you update any changes that you made to a file or several files and save that moment. So in the future you can always roll back to any savepoint. Every commit will have a unique ID ( 40 hexadecimal characters), the name of the author who made the commit, date & time stamp and the message relaying what changes were made.

**3. What are the best practices for commit messages?**

In my opinion the best practices are:
* Make sure your message is clear and specific. Don't write "Fixed a bug"
* Limit the message to 50 characters, Capitalize it and dont end it with a period
* Use present tense like: "Add", "Fix", "Change" etc.
* If you need to use a more detailed explanation in your message, seperate the first line of your message and the detailed explanation with a blank line, and wrap the detailed explanation to about 72 characters.

**4. What does the HEAD^ argument mean?**

HEAD^ refers to your current branch. So for example:
If you checkout  "new_branch", HEAD^ will then point to "new_branch" and if you checkout master, HEAD^ will point to master.

**5. What are the 3 stages of a git change and how do you move a file from one stage to the other?**

The 3 stages are:
* Work on a file in your text editor.
* Add the file for a commit.
* Commit the file with a message.

To move from working on a file to adding a file you would type: "git status"
to check if the file is ready to be added. Then to add the file to be commited you would type: "git add <YOUR_FILE>". And finally to commit the file with a message you would type: "git commit -m "<YOUR MESSAGE>" ".


**6. Write a handy cheatsheet of the commands you need to commit your changes.**
- Make sure you are in master branch
- git pull: check if your version of the file is the same as the one on GitHub.
- git checkout -b branch_name: create a new branch.
- do some work make some changes…
- git status: check the status of your branch.
- git add: add/stage the file to be committed.
- git commit -m “message”: commit the file with your message.

**7. What is a pull request and how do you create and merge one?**

A pull request is basically a way to merge the code from a different branch  ( for example feature-branch ) to the master branch.
Your typical workflow will look like this:
* Create new branch in the command line.
* Check out the branch. git checkout -b branch_name
* Write and commit some code. git commit file_name
* Push the branch to GitHub. git push origin branch_name
* Issue the pull request to the master branch

After issuing the pull request you will need to create the request on your GitHub account. Click on the green 'Compare & pull request' button, on the next screen make sure the base branch is the master branch and the compare branch is the new branch you just pushed. Write a title and the description of what changes you made as needed, and click the 'Create pull request' button.
To merge the pull request to the master you would click 'Merge pull request' under the "Conversation" tab of your pull request. Then click 'Confirm merge'
You can and should clean up by deleting the feature branch by clicking 'Delete branch' since now it's merged to the master and no longer needed.
Now the master branch should display your merged commits as the latest commits.

**8. Why are pull requests preferred when working with teams?**

The main reason is to avoid any mistakes being pushed to the master, since it allows several people to review the pull request and see all the changes that were made and even make comments before actually merging it to the master.