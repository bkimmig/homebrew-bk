# homebrew-tools

Formulas for tools I've built

To get the sha256 run `shasum -a 256 your-tarfile-here.tar.gz`

## awscurl

I forked the [awscurl repo](https://github.com/legal90/awscurl) and added a port mapping flag so I could sign requests
from my local machine to a port-forwarded host.

See my fork [here](https://github.com/bkimmig/awscurl)

```
brew tap bkimmig/tools
brew install bkimmig/tools/awscurl
```

