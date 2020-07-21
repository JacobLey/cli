THIS IS FOR EXAMPLE ONLY.
CODE SHOULD NOT BE MERGED TO MASTER!

This example directory depends on a locally-packed tar file.

Installing the packages the first time is successful. Updating the package and trying to re-install is unsuccessful. NPM wrongly quits early thinking it is a NOOP, but the integrity hashes are different.
