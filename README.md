# 🔥 FamilyFlame
*Keeping your family finances burning bright*

> **🔒 PRIVACY-FIRST**: This repository contains ONLY templates and code. Your actual financial data stays exclusively on your local machine. Read `PRIVACY-GUIDE.md` before setup.

A comprehensive, automated budget management system designed for families pursuing FIRE (Financial Independence, Retire Early). Handles income volatility, processes bank statements, and tracks savings goals with minimal monthly maintenance.

## Features

- **15-Minute Monthly Process**: Streamlined workflow replacing complex spreadsheet tracking
- **FIRE-Optimized Strategy**: Automated allocation toward financial independence goals
- **Income Volatility Protection**: Automated buffer system for irregular income
- **Bank Statement Processing**: CAMT.053 XML import with automatic categorization
- **Integrated Dashboard**: Real-time overview of income, expenses, and FIRE progress
- **Smart Allocations**: Percentage-based excess distribution to wealth-building goals
- **Crypto Integration Ready**: Framework for BTC/ETH/ADA portfolio management

## Quick Start

1. Open `src/familyflame-system.html` in your browser
2. Upload CAMT.053 bank statement files  
3. Review processed transactions and balances
4. Calculate monthly allocations toward FIRE goals
5. Export comprehensive analysis

## FIRE Strategy Integration

- **Fixed Pocket Money**: €150 per adult - controlled spending for faster wealth building
- **Buffer System**: €3,000-4,000 emergency fund protecting your FIRE journey
- **Aggressive Savings**: Excess income automatically allocated to wealth-building goals
- **Income Optimization**: Volatility protection ensures consistent progress toward financial independence

## The FamilyFlame Approach

**Burn Bright, Not Out**: Sustainable financial habits that accelerate FIRE without sacrificing family happiness

- 🔥 **Keep the Flame Alive**: Consistent savings even during income volatility
- 💰 **Feed the Fire**: Automatic excess allocation to investment goals  
- 🛡️ **Protect the Flame**: Buffer system prevents setbacks
- 📊 **Measure the Heat**: Clear progress tracking toward financial independence

## Project Structure

```
familyflame/
├── README.md
├── PRIVACY-GUIDE.md                    # 🔒 Essential privacy protection guide
├── .gitignore                          # 🔒 Comprehensive financial data protection
├── docs/
│   ├── fire-strategy.md               # 📊 FIRE strategy template
│   └── system-summary.md              # 📋 System documentation
├── src/
│   └── familyflame-system.html        # 💻 Main application
├── config/
│   ├── fire-allocation-rules-TEMPLATE.json  # 📝 Safe template (committed)
│   └── personal-config.json           # 🔒 Your real data (LOCAL ONLY)
├── exports/                            # 📤 Generated reports (local only)
├── bank-statements/                    # 🏦 Your statements (local only)
└── .gitkeep files
```

### 🔒 Privacy-First Architecture
- **Templates in Git**: Only safe, anonymized templates are committed
- **Personal Data Local**: Your real financial information stays on your machine
- **Automatic Protection**: Comprehensive `.gitignore` prevents accidental exposure

## FIRE Progress Tracking

- **Current Savings Rate**: Optimized to ~19% of gross income
- **Time to FI**: Projected based on automated allocation strategy
- **Buffer Protection**: Ensures FIRE journey continues despite income volatility
- **Goal Milestones**: House fund, kids education, investment portfolio targets

## Security & Privacy 🔒

**CRITICAL**: This system handles sensitive financial data. Privacy protection is paramount.

### What's Protected
- ✅ **All bank statements** automatically excluded from git
- ✅ **Personal configuration files** with actual financial data protected  
- ✅ **Export files** with real financial information excluded
- ✅ **Local processing only** - no data transmitted to external servers
- ✅ **Template files only** committed to repository (no real financial data)

### Setup Your Personal Configuration

1. **Copy the template**: `cp config/fire-allocation-rules-TEMPLATE.json config/personal-config.json`
2. **Update with your real data**: Edit `personal-config.json` with actual values
3. **Never commit personal files**: The `.gitignore` automatically protects files named `personal-*`

### Privacy Best Practices
- 🔐 **Never commit real financial data** to any repository (public or private)
- 🔐 **Use template files** for repository commits
- 🔐 **Keep personal config files local** and backed up securely
- 🔐 **Regularly audit your commits** for accidentally included sensitive data
- 🔐 **Use different names** for family members in templates vs actual configs

### Repository Safety
- Only template/example files are included in git
- Personal financial data stays on your local machine
- `.gitignore` has comprehensive financial data protection
- Bank statements and exports automatically excluded

## Next Steps - Fueling the Fire 🔥

See `docs/ai-review-prompt.md` for planned extensions:
- **Crypto FIRE Integration**: BTC/ETH/ADA portfolio management within FIRE strategy
- **Multi-Bank Support**: Comprehensive account aggregation  
- **Credit Card Processing**: Automated transaction categorization
- **FIRE Calculator**: Time-to-FI projections and optimization recommendations
- **Dutch Tax Optimization**: FIRE-specific tax strategies for Netherlands

## Repository Setup

```bash
# Clone your repository
git clone https://github.com/yourusername/familyflame.git
cd familyflame

# Create folder structure
mkdir -p docs src exports bank-statements config

# Add files (copy from this documentation)
# Then commit:
git add .
git commit -m "🔥 Initial commit: FamilyFlame v1.0 - FIRE-focused family budget system"
git push origin main
```

## License

Private family project - FamilyFlame™ - All rights reserved  
*"Keep your family finances burning bright"*