THIS IS FOR EXAMPLE ONLY.
CODE SHOULD NOT BE MERGED TO MASTER!

This example directory has dependency on a local package which depends on express, which internally has a dependency on path-to-regexp 0.1.7 https://github.com/expressjs/express/blob/master/package.json#L49

It also has a dependency on express-openapi-validator which has an internal dependency on path-to-regexp 6.1.0 https://github.com/cdimascio/express-openapi-validator/blob/master/package.json#L44

The usage of these packages is merely a case where behavior can be recreated. I do not believe there is anything explicitly wrong with these packages.
