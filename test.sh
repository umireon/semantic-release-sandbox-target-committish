# `GH_TOKEN` should be exported as environment variable
export NPM_TOKEN=null
export CI=true
VERSION=1.0.10

# mock semantic-release pre
sed -i '' -e "s/0.0.0-development/$VERSION/" package.json

node_modules/.bin/semantic-release post

sed -i '' -e "s/$VERSION/0.0.0-development/" package.json
