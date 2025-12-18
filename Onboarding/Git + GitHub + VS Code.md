# Git + GitHub + VS Code — Quick Onboarding Guide

Purpose: minimal, secure setup for new developers.

1) Identity

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

2) Credentials & security

```bash
git config --global credential.helper manager-core
git config --global http.sslVerify true
```

3) Core hygiene

```bash
git config --global core.autocrlf input
git config --global core.whitespace trailing-space,space-before-tab
git config --global init.defaultBranch main
```

4) Recommended defaults

```bash
git config --global pull.rebase true
git config --global commit.cleanup strip
git config --global diff.context 2
```

5) Useful tools

- Install `gh` (GitHub CLI) and authenticate: `gh auth login`.
- Install GitHub CLI via `winget` or package manager as appropriate.

6) VS Code essentials

- Install: GitHub.copilot, EditorConfig.EditorConfig, and your team's recommended extensions.
- Add a small `settings.json` snippet for editors (example kept in team profile).

7) Quick check

- Confirm `git --version`, `gh auth status`, and that VS Code loads recommended extensions.

See [Onboarding/Workstation.md](Onboarding/Workstation.md) for workstation prep steps.
