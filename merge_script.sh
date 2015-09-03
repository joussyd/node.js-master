if [ "$TRAVIS_BRANCH" != "staging" ]; then 
    exit 0;
fi

export GIT_COMMITTER_EMAIL=joussyd@github.com
export GIT_COMMITTER_NAME=joussyd

git checkout master || exit
git merge "$TRAVIS_COMMIT" || exit
git push origin master
