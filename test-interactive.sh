#!/usr/bin/env bash
# ==============================================================================
# HasteMod - Interactive Version-by-Version Test Runner
#
# Launches Minecraft version-by-version with:
#  - Built release JARs (shipped artifact testing)
#  - Pre-configured test environment (template-world copied into saves/gametest)
#  - Auto-loaded singleplayer test world via QuickPlay
#
# Usage:
#   ./test-interactive.sh                     # Tests all versions (26.1, 26.2, 26.3) on Fabric & NeoForge
#   ./test-interactive.sh -Pmc=26.1           # Test only 26.1 (both loaders)
#   ./test-interactive.sh -Ploader=fabric     # Test only Fabric across all versions
#   ./test-interactive.sh -Ploader=neoforge   # Test only NeoForge across all versions
#   ./test-interactive.sh -Pmc=26.2 -Ploader=fabric
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

./gradlew testInteractive "$@"
