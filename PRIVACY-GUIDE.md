# 🔒 FamilyFlame Privacy Guide

## Critical Privacy Protection

FamilyFlame handles extremely sensitive financial data. This guide ensures your personal information never leaves your control.

## Privacy Philosophy

**Zero Financial Data in Repository**: The repository contains ONLY templates and code. Your actual financial information stays exclusively on your local machine.

## What's Protected

### ✅ Automatically Protected by .gitignore
- **All bank statements** (`.xml`, `.pdf`, `.csv`, `.camt`, `.mt940`)
- **All personal config files** (`personal-*.json`, `my-*.json`, `actual-*.json`)
- **All financial exports** (CSV reports, Excel files, PDF statements)
- **Any backup files** that might contain financial data
- **Crypto wallet files** and private keys
- **Personal notes** and financial planning documents

### ✅ Template-Only Approach
- Repository contains only template files with placeholder data
- Real financial data goes in separate local files (excluded from git)
- Example: `fire-allocation-rules-TEMPLATE.json` → `personal-config.json`

## Setup Process (Privacy-First)

### Step 1: Repository Setup
```bash
# Clone the repository (contains ONLY templates)
git clone https://github.com/yourusername/familyflame.git
cd familyflame
```

### Step 2: Create Personal Configuration
```bash
# Copy template to personal file (automatically protected by .gitignore)
cp config/fire-allocation-rules-TEMPLATE.json config/personal-config.json

# Edit with your REAL financial data
# This file will NEVER be committed to git
nano config/personal-config.json
```

### Step 3: Verify Privacy Protection
```bash
# Check what git sees (should NOT include personal files)
git status

# Should show:
# On branch main
# Your branch is up to date with 'origin/main'.
# nothing to commit, working tree clean

# Should NOT show any personal-*.json files
```

### Step 4: Safe Commits
```bash
# Only commit template files and code changes
git add .
git commit -m "Update templates or system code"
git push origin main
```

## File Naming Conventions for Privacy

### ✅ Safe to Commit (Templates)
- `fire-allocation-rules-TEMPLATE.json`
- `example-config.json`
- `sample-*.json`
- Documentation files (`.md`)
- System code (`.html`, `.js`)

### ❌ NEVER Commit (Personal Data)
- `personal-config.json`
- `my-*.json`
- `actual-*.json`
- `real-*.json`
- Any file with actual financial numbers
- Bank statements in any format
- Export files with real data

## Regular Privacy Audits

### Monthly Check
```bash
# Ensure no personal data is staged for commit
git status
git diff --cached

# Should not see any real financial data
```

### Before Any Commit
```bash
# Always verify what you're committing
git diff --staged
git log --oneline -5

# Look for accidentally included:
# - Real account numbers
# - Actual balances
# - Personal names
# - Bank details
```

## Backup Strategy (Local Only)

### ✅ Safe Backup Locations
- Encrypted external drive
- Local encrypted backup service
- Password-protected cloud storage (personal account only)

### ❌ Never Backup To
- Unencrypted cloud storage
- Work computers or accounts
- Shared drives
- Public repositories
- Version control systems

## Multi-User Households

### If Multiple People Use FamilyFlame
```bash
# Each person gets their own personal config
cp config/fire-allocation-rules-TEMPLATE.json config/personal-derek.json
cp config/fire-allocation-rules-TEMPLATE.json config/personal-iris.json

# All personal-*.json files are automatically protected
```

## Incident Response

### If You Accidentally Commit Financial Data

**IMMEDIATE ACTIONS:**
1. **Stop**: Don't push if you haven't already
2. **Reset**: `git reset --soft HEAD~1` (uncommits but keeps changes)
3. **Clean**: Remove sensitive data from files
4. **Recommit**: With only safe data

**If Already Pushed:**
1. **Contact repository host** (GitHub, GitLab) for help
2. **Consider repository deletion** and recreation
3. **Change any exposed account information**
4. **Review security of exposed data**

### If Repository Becomes Public Accidentally
1. **Immediately make private** or delete
2. **Assume all data in history is compromised**
3. **Change any exposed financial account details**
4. **Create new repository** with proper privacy protection

## Advanced Privacy Features

### Branch-Based Privacy
```bash
# Keep personal configurations in a local-only branch
git checkout -b personal-config
# Add your real configs here
# NEVER push this branch
```

### Encrypted Git Repository
```bash
# Use git-crypt for additional encryption
git-crypt init
git-crypt add-gpg-user YOUR_GPG_KEY
```

## Privacy Checklist

Before any commit, verify:
- [ ] No real account numbers visible
- [ ] No actual financial balances included
- [ ] No personal names (use Adult1, Adult2, Child1, Child2)
- [ ] No bank names or specific institutions
- [ ] No crypto wallet addresses or keys
- [ ] Only template/example data present

## Support and Questions

If you're unsure about privacy implications:
1. **When in doubt, don't commit**
2. **Review the .gitignore file** to understand what's protected
3. **Use git status frequently** to see what's being tracked
4. **Start with templates only** and gradually customize locally

Remember: **Your financial privacy is irreversible once compromised. Always err on the side of caution.**

🔥 Keep your flame burning bright AND private! 🔒