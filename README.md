# 🚀 Git Command Automation – Bash Shortcuts for Git

This is a personal collection of useful Git bash functions and aliases to simplify and speed up my daily Git workflow.
If you're tired of typing repetitive Git commands, this toolkit is for you.

---

## 📦 Features

* Quick commit, push, and branch operations
* Safe pull with stash and rebase
* Smart branch cleanup
* Force sync, tagging, cherry-picking
* Easy navigation with aliases
* Custom backup and history checks

---

## ⚙️ Setup

1. **Clone this repository**:

   ```bash
   git clone https://github.com/codewith0xm/Git-Command-Automation.git
   ```

2. **Source the script in your terminal config**:
   Add this line to your `~/.bashrc`, `~/.zshrc`, or `~/.profile`:

   ```bash
   source /path/to/Git-Command-Automation/git_functions.sh
   ```

3. **Reload your terminal**:

   ```bash
   source ~/.bashrc   # or ~/.zshrc
   ```

---

## 🛠️ Common Commands

| Alias      | Description                        |
| ---------- | ---------------------------------- |
| `gcp`      | Add, commit, and push              |
| `gsp`      | Safe push with branch display      |
| `gnb`      | Create and switch to new branch    |
| `gpl`      | Pull latest changes                |
| `gco`      | Checkout to branch                 |
| `gclean`   | Delete merged local branches       |
| `gprune`   | Delete merged branches except main |
| `gamend`   | Amend last commit message          |
| `gbackup`  | Backup current branch              |
| `grecent`  | Show recent commits in last N days |
| `gpushall` | Push all branches                  |
| `gspull`   | Stash, pull, and pop stash         |
| `gsync`    | Force sync with remote             |
| `gupd`     | Pull latest with rebase and push   |
| `gdiffb`   | Diff between two branches          |
| `gcpb`     | Create and push a new branch       |
| `gremote`  | Show remote URLs                   |
| `glg`      | Show Git log graph                 |
| `gs`       | Show Git status                    |

---

## 🚀 Example Usage

```bash
gcp "Updated README"           # Add, commit, push
gsp "Safe push to current branch"
gnb feature/new-ui             # New branch
gclean                         # Clean merged branches
gprune                         # Prune branches except main
gamend "Fix commit message"    # Amend last commit
grecent 7                      # Commits in last 7 days
gdiffb main dev                # Diff main vs dev
```

---

## 💡 Notes

* You can customize aliases and function names in `git_functions.sh` to match your style.
* This script is intended for personal use but can easily be adapted for teams.

---


