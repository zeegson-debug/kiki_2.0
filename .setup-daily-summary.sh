#!/usr/bin/env bash
# Setup Daily Foundation Progress Summary (8 PM CST)

set -e

echo "📊 Setting up daily Foundation progress summary..."
echo ""

# Create the cron job
openclaw cron add \
  --name "Foundation Daily Update" \
  --schedule "0 20 * * *" \
  --session isolated \
  --task "Read PROJECTS.md. Send Telegram message with Foundation progress: completed tasks today, blockers, next steps, estimated completion %." \
  --delivery announce

echo ""
echo "✅ Daily summary cron job created!"
echo ""
echo "Runs daily at 8 PM CST"
echo "Sends progress update via Telegram"
echo ""
