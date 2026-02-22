# 📓 Mini Diary
**AI-powered minimal diary. Small footprint, smart features. Security hardened.**

## 🔒 Security Hardened v0.1.2

Mini Diary v0.1.2 includes comprehensive security fixes:

### ✅ Security Improvements
- **Path Validation**: Prevents arbitrary file write via environment variables
- **Safe Permission Operations**: Ownership checks for all file operations  
- **Strict Bash Mode**: `set -euo pipefail` for error handling
- **User Directory Restriction**: Operations limited to user directories only
- **System Directory Protection**: Blocks access to `/etc/`, `/usr/`, etc.

### 🛡️ Security Features
- No network access required
- No system modifications
- Clear security boundaries
- Transparent about capabilities

## 🚀 Installation

## ✨ Features

- **📝 Simple Logging**: Date + weather + notes + todos in clean Markdown
- **🏷️ AI Auto-Tagging**: Smart content analysis and automatic tagging
- **🔍 Smart Search**: Search by tags, date, or content
- **☁️ Cloud Sync**: Optional NextCloud integration (with detailed guide)
- **📊 Basic Stats**: Tag frequency and completion statistics
- **🔓 Open Format**: Plain Markdown files - your data stays yours

## 🚀 Quick Start

```bash
# Install via ClawHub
clawhub install mini-diary

# Add a note
mini-diary add "Met with client about P1S delivery"

# Search notes
mini-diary search --tag "📦"

# View statistics
mini-diary stats --month
```

## 📋 Requirements

- OpenClaw agent
- Basic terminal knowledge
- (Optional) NextCloud for cloud sync

## 📁 Project Structure

```
mini-diary/
├── scripts/           # Core functionality scripts
├── templates/         # Diary templates
├── examples/          # Usage examples
├── docs/             # Documentation
└── SKILL.md          # Skill definition
```

## 🔧 Configuration

Mini Diary works out of the box with sensible defaults. Optional configuration includes:

- Custom tag definitions
- NextCloud sync settings
- Diary file location
- Date and weather formats

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](docs/CONTRIBUTING.md).

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with [OpenClaw](https://openclaw.ai)
- Inspired by the need for simple, AI-enhanced journaling
- Thanks to all contributors and users

---

**Mini Diary** - Because journaling should be simple, smart, and yours.
## 🚀 Installation

### Via ClawHub (Recommended)
```bash
clawhub install mini-diary
```

**ClawHub Page**: https://clawhub.ai/PrintXDreams/mini-diary

### Manual Installation
```bash
git clone https://github.com/PrintXDreams/mini-diary.git
cd mini-diary
# Make scripts executable
chmod +x scripts/*.sh
# Add to PATH or use directly
```

### Quick Test
```bash
# Test adding a note
./scripts/add_note.sh "Test note for security verification"
```

## 📦 ClawHub

[![ClawHub](https://img.shields.io/badge/ClawHub-Mini%20Diary-blue)](https://clawhub.ai/PrintXDreams/mini-diary)
[![Security](https://img.shields.io/badge/Security-Hardened-green)](https://github.com/PrintXDreams/mini-diary/blob/main/CHANGELOG.md#v012---2026-02-23)

Available on ClawHub: https://clawhub.ai/PrintXDreams/mini-diary

## 🔐 Security Details

### Security Architecture
- **Path Validation**: All file paths are validated before operations
- **Permission Checks**: Scripts verify file ownership before modifications
- **Error Handling**: Strict bash mode prevents silent failures
- **Boundary Enforcement**: Operations restricted to user directories

### Security Testing
The skill has been reviewed by ClawHub Security and includes fixes for:
- CWE-22: Path Traversal vulnerabilities
- CWE-276: Incorrect Default Permissions
- Arbitrary file write via environment variables

### License
Full MIT license included in [SKILL.md](SKILL.md#-license).

## 🤝 Contributing

Found a bug? Have a feature request? Contributions welcome!

1. Fork the repository
2. Create a feature branch  
3. Submit a pull request

## 📞 Support

- GitHub Issues: https://github.com/PrintXDreams/mini-diary/issues
- OpenClaw Discord: https://discord.gg/clawd
