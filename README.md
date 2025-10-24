# Homebrew Tap for whatdidido

This is the Homebrew tap for [whatdidido](https://github.com/oliviersm199/whatdididoagain), a CLI tool to track your work across Jira and Linear with AI-powered summaries.

## Installation

```bash
brew tap oliviersm199/whatdidido
brew install whatdidido
```

Or in one command:

```bash
brew install oliviersm199/whatdidido/whatdidido
```

## Updating the Formula

When a new version of whatdidido is released on PyPI:

1. Download the new release tarball from PyPI:
   ```bash
   curl -LO https://files.pythonhosted.org/packages/source/w/whatdidido/whatdidido-X.X.X.tar.gz
   ```

2. Calculate the SHA256 hash:
   ```bash
   shasum -a 256 whatdidido-X.X.X.tar.gz
   ```

3. Update the formula in `Formula/whatdidido.rb`:
   - Update the `url` with the new version number
   - Update the `sha256` with the hash from step 2

4. Test the formula locally:
   ```bash
   brew install --build-from-source Formula/whatdidido.rb
   brew test whatdidido
   ```

5. Commit and push the changes

## Setting Up This Tap Repository

To set up this tap on GitHub:

1. Create a new repository named `homebrew-whatdidido` on GitHub
2. Copy the contents of this `homebrew-tap` folder to the repository
3. The structure should be:
   ```
   homebrew-whatdidido/
   ├── Formula/
   │   └── whatdidido.rb
   └── README.md
   ```
4. Push to GitHub
5. Users can now install with `brew tap oliviersm199/whatdidido`

## Automated Updates with GitHub Actions

You can automate formula updates when you release new versions. See the GitHub Actions workflow example in this repository.
