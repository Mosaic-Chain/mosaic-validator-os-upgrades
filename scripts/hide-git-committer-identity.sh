ORIGINAL_AUTHOR=$(git show -s --format='%ae') # Author's email address

GENERATED_COMMITTER_ID=$(echo $ORIGINAL_AUTHOR | openssl dgst -hex -sha256 |  awk '{print $2}' | cut -c1-8) # The first 8 characters of the email adress's sha256 hash 
GENERATED_COMMITTER_EMAIL="noreply-contributor-${GENERATED_COMMITTER_ID}@mosaicchain.io"
GENERATED_COMMITTER_NAME="Mosaic Contributor #${GENERATED_COMMITTER_ID}"

git config --replace-all user.name "$GENERATED_COMMITTER_NAME"
git config --replace-all user.email "$GENERATED_COMMITTER_EMAIL"

GIT_COMMITTER_DATE=$(git show --no-patch --format=%ci)

git commit --amend --no-edit --reset-author --date="$GIT_COMMITTER_DATE"