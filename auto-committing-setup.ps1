$GitHubUsername='zhenvd'
$CommitMessage='auto committed from auto-committing-steup.ps1!'
$PracticeRepoDir='E:\Educational\LC\PowerShell'

#4. Clone your forked repo into a directory at the $PracticeRepoDir path
git clone "https://github.com/$GitHubUsername/powershell-practice.git" "$PracticeRepoDir"\powershell-github-practice

#Write-Output "PSCommandPath is: $PSCommandPath"

#5. Copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
Copy-Item $PracticeRepoDir\auto-committing-setup.ps1 $PracticeRepoDir\powershell-github-practice\auto-committing-setup.ps1

#6. Change into the cloned directory ($PracticeRepoDir)
Set-Location $PracticeRepoDir\powershell-github-practice

#7. Add the new script file in the cloned directory to git staging
git init
git add .

#8. Commit the changes to the repo using the message variable ($CommitMessage)
git commit -m "$CommitMessage"

#9. Push the local git history back to your forked repo
git push --all