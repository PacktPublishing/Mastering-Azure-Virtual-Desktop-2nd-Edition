git add * --all
@set cm=Update
@if not "%1"=="" set cm=%*
echo "%cm%"

git commit -m "Update"
git push  -u origin main