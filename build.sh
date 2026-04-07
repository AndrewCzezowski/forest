git worktree remove output/forest
git worktree remove output/forest
git worktree add output/forest gh-pages --no-checkout
cp output/forest/.git ~.git.tmp
forester build forest.toml
mv ~.git.tmp output/forest/.git

echo 'Commit and push changes to gh-pages to update.'