#!/usr/bin/env bash
# Tailscale Remote Access Setup for OpenClaw

set -e

echo "🌐 Tailscale Remote Access Setup"
echo ""
echo "This enables remote access to OpenClaw Web UI via Tailscale."
echo ""

# Check if Tailscale is installed
if ! command -v tailscale &> /dev/null; then
    echo "❌ Tailscale is not installed."
    echo ""
    echo "Install from: https://tailscale.com/download"
    exit 1
fi

# Check if Tailscale is running
if ! tailscale status &> /dev/null; then
    echo "❌ Tailscale is not running."
    echo ""
    echo "Run: sudo tailscale up"
    exit 1
fi

echo "✅ Tailscale is installed and running"
echo ""

# Get current Tailscale hostname
TAILSCALE_HOST=$(tailscale status --json | jq -r '.Self.DNSName' | sed 's/\.$//')

if [ -z "$TAILSCALE_HOST" ]; then
    echo "❌ Could not determine Tailscale hostname"
    exit 1
fi

echo "📍 Your Tailscale hostname: $TAILSCALE_HOST"
echo ""
echo "Enabling Tailscale mode in openclaw.json..."
echo ""

# Update config via OpenClaw CLI (safer than direct JSON edit)
# We'll create a patch file and apply it

cat > /tmp/openclaw-tailscale-patch.json <<EOF
{
  "gateway": {
    "tailscale": {
      "mode": "on"
    }
  }
}
EOF

echo "🔧 Applying config patch..."
echo ""

# Apply via OpenClaw (requires gateway restart)
# Note: This will trigger a restart

echo "📝 Config patch ready at: /tmp/openclaw-tailscale-patch.json"
echo ""
echo "To apply (will restart gateway):"
echo "  openclaw gateway config patch --file /tmp/openclaw-tailscale-patch.json"
echo ""
echo "After restart, access Web UI from any Tailscale device:"
echo "  http://$TAILSCALE_HOST:18789"
echo ""
echo "📱 Install Tailscale on your phone:"
echo "  iOS: https://apps.apple.com/app/tailscale/id1470499037"
echo "  Android: https://play.google.com/store/apps/details?id=com.tailscale.ipn"
echo ""
