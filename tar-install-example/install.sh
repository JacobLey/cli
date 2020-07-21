## Remove all dependencies/non git files (start from scratch)
rm -rf ./node_modules ./tar/tar-1.0.0.tgz ./package-lock.json ./tar/random.txt

# setup local tar package
cd tar
echo "4 (Not actually random)" > random.txt
npm pack --silent
cd -

# install everything
npm i

echo ~~~~~~~~~~~~~~~~~~~~~~
echo LOGGING INSTALLED PACKAGES
# Should log message about not actually having a random number
cat ./node_modules/tar-dep/random.txt
# Should log message about file should _not_ be available, but is (hence local packing of tar is preferred)
cat ./node_modules/file-dep/IGNOREME.md
echo ~~~~~~~~~~~~~~~~~~~~~~~

cd tar
# Set random number
echo $RANDOM > random.txt
# log pack message, so it can be compared to package-lock.json
npm pack
cd -

# install. _Should_ re-install tar-dep but instead performs noop
npm i

echo ~~~~~~~~~~~~~~~~~~~~~~
echo LOGGING NOT UPDATED PACKAGES
# Message is unchanged
cat ./node_modules/tar-dep/random.txt
# Proof it _should_ be changed
cat ./tar/random.txt
echo ~~~~~~~~~~~~~~~~~~~~~~

# install. works
npm i tar-dep

echo ~~~~~~~~~~~~~~~~~~~~~~
echo LOGGING ACTUALLY UPDATED PACKAGES
# Message is changed
cat ./node_modules/tar-dep/random.txt
echo ~~~~~~~~~~~~~~~~~~~~~~
