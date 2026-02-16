#!/usr/bin/env bash
# GitHub Setup for Foundation Tracking

set -e

echo "🔐 Step 1: GitHub Authentication"
echo "Run: gh auth login"
echo "Choose: GitHub.com → HTTPS → Yes (authenticate Git) → Login with browser"
echo ""
read -p "Press Enter after completing auth..."

echo ""
echo "📦 Step 2: Create Private Repo"
gh repo create openclaw-foundation --private --source . --remote origin

echo ""
echo "⬆️  Step 3: Push workspace"
git push -u origin main

echo ""
echo "📋 Step 4: Create Foundation Issue"
gh issue create \
  --title "Foundation (Task #1): OpenClaw Lean Operation - 97% Cost Reduction" \
  --body-file PROJECTS.md \
  --label "priority:critical,type:infrastructure"

echo ""
echo "✅ GitHub tracking setup complete!"
echo ""
echo "📱 Next: Install GitHub mobile app and enable notifications for openclaw-foundation repo"
