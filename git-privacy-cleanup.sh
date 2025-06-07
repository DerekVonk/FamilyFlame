#!/bin/bash
# 🔒 FamilyFlame Privacy Cleanup Script
# This script completely rewrites git history to remove sensitive financial data

echo "🔒 FamilyFlame Privacy Cleanup - Removing Sensitive Data from Git History"
echo "=================================================================="
echo ""
echo "⚠️  WARNING: This will completely rewrite your git history!"
echo "⚠️  Make sure this is what you want before proceeding."
echo ""
read -p "Are you sure you want to continue? (type 'YES' to proceed): " confirm

if [ "$confirm" != "YES" ]; then
    echo "❌ Cleanup cancelled. No changes made."
    exit 1
fi

echo ""
echo "🔍 Current repository status:"
git log --oneline --no-pager
echo ""

# Step 1: Create a backup branch (just in case)
echo "💾 Creating backup branch..."
git branch backup-before-cleanup
echo "✅ Backup created in 'backup-before-cleanup' branch"
echo ""

# Step 2: Reset to initial empty state
echo "🔄 Resetting repository to clean state..."
git checkout --orphan new-clean-main
echo "✅ Created new clean branch"
echo ""

# Step 3: Remove all tracked files
echo "🧹 Removing all previously tracked files..."
git rm -rf . 2>/dev/null || true
echo "✅ All files removed from git tracking"
echo ""

# Step 4: Create clean directory structure
echo "📁 Creating clean directory structure..."
mkdir -p docs src exports bank-statements config

# Step 5: Add .gitkeep files for empty directories
echo "📄 Creating .gitkeep files..."
cat > exports/.gitkeep << 'EOF'
# This file ensures the exports directory is tracked by git
# Generated reports and exports will be saved here
# Individual export files are excluded by .gitignore for privacy
EOF

cat > bank-statements/.gitkeep << 'EOF'
# This file ensures the bank-statements directory is tracked by git
# CAMT.053 XML files and other bank statements go here
# Individual statement files are excluded by .gitignore for security
EOF

echo "✅ Directory structure created"
echo ""

# Step 6: Instructions for adding clean files
echo "📋 NEXT STEPS - Add your clean template files:"
echo ""
echo "1. Copy the following files from the FamilyFlame artifacts:"
echo "   - README.md (to root directory)"
echo "   - PRIVACY-GUIDE.md (to root directory)"
echo "   - .gitignore (to root directory - CRITICAL!)"
echo "   - fire-allocation-rules-TEMPLATE.json (to config/ directory)"
echo "   - fire-strategy.md (to docs/ directory)"
echo "   - familyflame-system.html (to src/ directory)"
echo "   - setup-familyflame-TEMPLATE.sh (to root directory)"
echo ""
echo "2. After copying all files, run:"
echo "   git add ."
echo "   git status  # Verify no sensitive files are being added"
echo "   git commit -m '🔥 Initial commit: FamilyFlame v1.0 - Privacy-protected templates only'"
echo ""
echo "3. Force push to replace the old history:"
echo "   git push -f origin new-clean-main:main"
echo ""
echo "4. Switch to the new main branch:"
echo "   git checkout main"
echo "   git branch -D new-clean-main"
echo ""
echo "5. Create your personal config (local only):"
echo "   cp config/fire-allocation-rules-TEMPLATE.json config/personal-config.json"
echo "   # Edit personal-config.json with your real data"
echo ""
echo "⚠️  IMPORTANT REMINDERS:"
echo "   - The backup branch 'backup-before-cleanup' contains your old commits"
echo "   - You can delete it after confirming the cleanup worked: git branch -D backup-before-cleanup"
echo "   - Your personal financial data should now be in personal-config.json (NOT committed)"
echo "   - Always check 'git status' before committing to ensure no sensitive files"
echo ""
echo "🔒 Privacy cleanup preparation complete!"
echo "📋 Follow the steps above to complete the process."