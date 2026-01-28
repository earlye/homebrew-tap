# Homebrew Tap

Custom Homebrew formulae by earlye.

## Installation

```bash
brew tap earlye/tap
brew install <formula>
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `git-interactive` | Extensible interactive Git TUI |

## How It Works

Formulae are automatically updated via GitHub Actions when upstream projects release new versions. Each project triggers this tap's `update-formula` workflow with:

- Template URL (fetched from the tagged release)
- Version and download URLs
- SHA256 checksums

The workflow uses `envsubst` to generate the final formula from the template.
