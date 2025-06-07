#!/bin/bash
# 🔥 FamilyFlame Repository Setup Script (TEMPLATE)
# Privacy-focused family financial management system

# PRIVACY NOTE: Copy this file to setup-personal.sh and customize as needed
# This template version is safe to commit to git

echo "🔥 Setting up FamilyFlame repository..."

# Clone your repository (replace with your actual repo URL)
# git clone https://github.com/yourusername/familyflame.git
# cd familyflame

echo ""
echo "🔒 FIRST: Read PRIVACY-GUIDE.md for critical privacy protection!"
echo ""

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p docs src exports bank-statements config

# Create .gitkeep files for empty directories
echo "📄 Creating .gitkeep files..."
echo "# This file ensures the exports directory is tracked by git" > exports/.gitkeep
echo "# Generated reports and exports will be saved here" >> exports/.gitkeep
echo "# Individual export files are excluded by .gitignore for privacy" >> exports/.gitkeep

echo "# This file ensures the bank-statements directory is tracked by git" > bank-statements/.gitkeep
echo "# CAMT.053 XML files and other bank statements go here" >> bank-statements/.gitkeep
echo "# Individual statement files are excluded by .gitignore for security" >> bank-statements/.gitkeep

echo ""
echo "🔒 PRIVACY SETUP INSTRUCTIONS:"
echo ""
echo "1. Download and copy template files:"
echo "   - Copy README.md to root directory"
echo "   - Copy PRIVACY-GUIDE.md to root directory (READ THIS FIRST!)"
echo "   - Copy .gitignore to root directory (CRITICAL for privacy!)"
echo "   - Copy fire-allocation-rules-TEMPLATE.json to config/ directory"
echo "   - Copy fire-strategy.md to docs/ directory"
echo "   - Copy familyflame-system.html to src/ directory"
echo ""
echo "2. Create your personal configuration (NOT committed to git):"
echo "   cp config/fire-allocation-rules-TEMPLATE.json config/personal-config.json"
echo "   # Then edit config/personal-config.json with your REAL financial data"
echo ""
echo "3. Verify privacy protection:"
echo "   git status  # Should NOT show any personal-* files"
echo ""
echo "4. Commit template files only:"
echo "   git add ."
echo '   git commit -m "🔥 Initial commit: FamilyFlame v1.0 - FIRE-focused family budget system"'
echo "   git push origin main"
echo ""
echo "⚠️  CRITICAL PRIVACY REMINDERS:"
echo "   - NEVER commit files with real financial data"
echo "   - Always use template files for repository commits"
echo "   - Keep personal configs (personal-*.json) local only"
echo "   - Regularly check git status before committing"
echo "   - Read PRIVACY-GUIDE.md for comprehensive protection"
echo ""
echo "🔥 FamilyFlame setup complete! Your financial privacy is protected!"