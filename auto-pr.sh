for pr_number in $(gh pr list --repo HavocFramework/Havoc --state open --json number -q '.[].number'); do
    git fetch upstream pull/$pr_number/head:upstream-pr-$pr_number
    git merge upstream-pr-$pr_number --auto
done

