## Remove all dependencies/non git files (start from scratch)
rm -rf ./node_modules ./tar-dep/node_modules ./tar-dep/package-lock.json ./tar-dep/tar-dep-1.0.0.tgz ./package-lock.json before-dedupe.txt after-dedupe.txt

# setup local tar package
cd tar-dep
npm i
npm dedupe
npm pack
cd -

# instal everything
npm i
# explicitly install package
npm i tar-dep
# everything looks fine an dandy
npm ls > before-dedupe.txt

npm dedupe
# Multiple extraneous/missing errors
# Including path-to-regexp
npm ls > after-dedupe.txt
