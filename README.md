# homebrew-tools

Custom Homebrew tap for kmlawson's tools and utilities.

## Available Formulas

### ordb
Fast, feature-rich command-line tool for searching the comprehensive Norwegian bokmål dictionary.

**Features:**
- Multiple search modes: exact, fuzzy, prefix, anywhere, full-text
- Interactive search lists with lettered selection menus
- Smart character replacement (aa→å, oe→ø, ae→æ)
- Rich terminal output with colored formatting and pagination
- Cross-platform support: Windows, macOS, and Linux
- 90,841+ dictionary entries with comprehensive Norwegian language support

**Installation:**
```bash
brew tap kmlawson/tools
brew install kmlawson/tools/ordb
```

**Usage:**
```bash
# Search for a word
ordb nord

# Interactive fuzzy search
ordb -f hus

# Search anywhere in definitions
ordb -a "til fots"

# Show help
ordb --help
```

## About

This tap provides Homebrew formulas for tools developed by [Konrad M. Lawson](https://github.com/kmlawson). 

For more information about individual tools, visit their respective repositories:
- [ordb](https://github.com/kmlawson/ordb) - Norwegian dictionary search tool

## Support

- Report issues with individual tools in their respective repositories
- For tap-related issues, open an issue in this repository