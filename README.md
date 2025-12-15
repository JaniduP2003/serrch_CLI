# serrch_CLI
A colorful, user-friendly command-line search tool for efficiently finding keywords across your entire codebase with highlighted results and context.

# 🔍 CodeBase Search Tool

A beautiful, colorful command-line search utility for searching keywords across your entire codebase with enhanced visibility and context.

## ✨ Features

- 🎨 **Colorful Output**: Easy-to-read colored terminal output
- 🔍 **Case-Insensitive Search**: Find matches regardless of case
- 📝 **Line Numbers**: Shows exact line numbers of matches
- 📊 **Context Display**: Shows 1 line before and after each match
- 🚫 **Smart Filtering**: Automatically excludes common directories
- 📈 **Match Counter**: Displays total number of matches found
- ⚡ **Fast & Efficient**: Quickly searches through large codebases

## 🚀 Installation

1. Clone or download the `serrch.sh` script
2. Make it executable:
```bash
chmod +x serrch.sh
```

## 📖 Usage

### Basic Search
```bash
./serrch.sh "keyword"
```

### Examples
```bash
# Search for "SignalR" across the codebase
./serrch.sh "SignalR"

# Search for "GetNotifications"
./serrch.sh "GetNotifications"

# Search for "async"
./serrch.sh "async"
```

## 🎯 What Gets Searched

The tool searches through all files in your project while intelligently excluding:
- `node_modules/` - Node.js dependencies
- `.git/` - Git repository files
- `bin/` - Binary files
- `obj/` - Object files
- `.vs/` - Visual Studio cache
- `dist/` - Distribution builds
- `build/` - Build outputs

## 📋 Output Format

```
╔════════════════════════════════════════════════════╗
║        CodeBase Search Tool                        ║
╚════════════════════════════════════════════════════╝
Searching for: 'YourKeyword'

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📁 File: path/to/file.cs
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
25: context line before
26: line with highlighted KEYWORD match
27: context line after

═══════════════════════════════════════════════════
Total matches found: 15
═══════════════════════════════════════════════════
```

## 🛠️ Technical Details

- **Language**: Bash Script
- **Requirements**: 
  - Bash shell
  - `grep` command
  - `find` command
- **Platform**: Linux/Unix/macOS/WSL

## 💡 Tips

- Use quotes around multi-word searches: `./serrch.sh "multiple words"`
- The search is case-insensitive by default
- Works great for finding function names, class names, or specific code patterns
- Perfect for code reviews and refactoring tasks

## 🤝 Contributing

Feel free to fork, modify, and enhance this tool for your needs!

## 📝 License

Free to use and modify.

## 👨‍💻 Author

Created for efficient codebase navigation and search operations.

---

**Happy Searching! 🎉**
