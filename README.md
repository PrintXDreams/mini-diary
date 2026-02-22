# 📓 Mini Diary

AI-powered minimal diary. Small footprint, smart features.

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
