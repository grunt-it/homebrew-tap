# grunt-it/homebrew-tap

Homebrew tap for [grunt-it](https://github.com/grunt-it) tools.

## Available formulas

| Tool | Description | Status |
|---|---|---|
| `gruntcode` | Soft-fork of [opencode](https://github.com/anomalyco/opencode) with hivemind-native autonomous-coordinator patches | Draft (binary not yet released) |

## Usage

```sh
brew tap grunt-it/tap
brew install gruntcode
```

Or in one shot:

```sh
brew install grunt-it/tap/gruntcode
```

## Why a custom tap

Standard `brew install` uses the official `homebrew-core` tap. Tools that aren't (yet) in core, or that are grunt-it forks of upstream tools, live here.

## Formulas

Each tool's formula lives in `Formula/<name>.rb`. See:

- [`Formula/gruntcode.rb`](./Formula/gruntcode.rb)

## Adding a new formula

```sh
brew create --tap=grunt-it/tap <name> <url>
# edit Formula/<name>.rb
git add Formula/<name>.rb
git commit -m "feat: add <name> formula"
git push
```

Once pushed, `brew install grunt-it/tap/<name>` works for everyone.
