# 🚀 Git + GitHub + VS Code Setup

Welcome! This guide ensures your development environment is secure, consistent, and optimized for collaboration. Follow the steps in order — each builds on the last.

---

## 🔧 1. Identity (Who You Are)

Set your name and email so commits are correctly attributed.

```bash
git config --global user.name "YourName"
git config --global user.email "your.email@example.com"
```

---

## 🔑 2. Security & Credentials

Enforce SSL verification and credential storage.

```bash
git config --global credential.helper manager-core
git config --global http.sslVerify true
```

**Purpose:** Secure authentication, prevent unsafe connections.

---

## 🧹 3. File Hygiene

Match VS Code directives for clean diffs.

```bash
git config --global core.whitespace trailing-space,space-before-tab
git config --global core.autocrlf input
```

**Purpose:** Consistent formatting across platforms.

---

## 🔄 4. Commit & Fetch Behavior

Streamline daily workflow.

```bash
git config --global fetch.auto true
git config --global commit.cleanup strip
```

**Purpose:** Auto‑updates and clean commit messages.

---

## 🌱 5. Branch Defaults

Align with GitHub’s `main` branch.

```bash
git config --global init.defaultBranch main
```

---

## 📝 6. Diff & Merge Behavior

Concise, word‑level diffs for easier reviews.

```bash
git config --global diff.context 2
git config --global diff.wordRegex .
```

---

## ⚙️ 7. GitHub CLI Setup

Install and authenticate GitHub CLI.

```bash
winget install --id GitHub.cli
gh auth login
gh extension install github/gh-copilot
```

**Purpose:** Automation + Copilot CLI suggestions.

---

## 📈 8. Advanced GitHub Practices

Recommended for clean history and standardized commits.

```bash
git config --global pull.rebase true
git config --global core.excludesfile ~/.gitignore_global
git config --global commit.template ~/.gitmessage.txt
git config --global commit.gpgsign true
```

**Purpose:** Rebase workflow, global ignore, commit templates, signed commits.

---

## 📂 9. EditorConfig Integration

Create a `.editorconfig` file in your repo root:

```ini
root = true

[*]
end_of_line = lf
insert_final_newline = false
trim_trailing_whitespace = true
charset = utf-8
```

**Purpose:** Enforces whitespace/newline rules across contributors.

---

## 💻 10. VS Code Settings (Enhanced)

Add to your `settings.json`:

```json
{
  "editor.experimentalGpuAcceleration": "on",
  "editor.largeFileOptimizations": true,
  "editor.suggest.preview": true,
  "editor.gotoLocation.multipleDefinitions": "goto",
  "debug.inlineValues": true,
  "debug.showBreakpointsInOverviewRuler": true,
  "remote.autoForwardPorts": true,
  "remote.restoreForwardedPorts": true,
  "editor.guides.bracketPairs": "active",
  "editor.guides.indentation": true
}
```

---

## 🧩 11. Workspace Profiles (Optional)

Bundle settings into a profile for quick onboarding:

```json
{
  "profiles": {
    "TILT3D-Workflow": {
      "settings": {
        "editor.experimentalGpuAcceleration": "on",
        "editor.suggest.preview": true,
        "editor.guides.bracketPairs": "active"
      },
      "extensions": [
        "GitHub.copilot",
        "EditorConfig.EditorConfig"
      ]
    }
  }
}
```

---

## 📋 Final `.gitconfig` Snapshot

```ini
[user]
    name = KrisHewett
    email = your.email@example.com

[credential]
    helper = manager-core

[http]
    sslVerify = true

[core]
    whitespace = trailing-space,space-before-tab
    autocrlf = input
    excludesfile = ~/.gitignore_global

[fetch]
    auto = true

[commit]
    cleanup = strip
    template = ~/.gitmessage.txt
    gpgsign = true

[init]
    defaultBranch = main

[diff]
    context = 2
    wordRegex = .

[pull]
    rebase = true
```

---

## ✅ Quick Checklist

- [x] Identity set (`user.name`, `user.email`)
- [x] Secure credentials (`manager-core`, SSL)
- [x] File hygiene rules applied
- [x] Commit/fetch workflow streamlined
- [x] Branch default = `main`
- [x] Diff/merge tuned for readability
- [x] GitHub CLI + Copilot installed
- [x] Advanced practices (rebase, ignore, template, signed commits)
- [x] `.editorconfig` created
- [x] VS Code settings applied
- [x] Workspace profile ready

---
