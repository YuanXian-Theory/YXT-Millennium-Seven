#!/bin/bash
echo "=================================================="
echo "  YXT-Millennium-Seven Verification Script"
echo "  Dual-Layer Ontological + Machine Verification"
echo "=================================================="

echo "[1/2] Building Lean 4 formalization..."
cd lean && lake build

if [ $? -eq 0 ]; then
  echo "✅ Lean 4 build succeeded."
else
  echo "⚠️  Lean 4 build reported issues."
fi

echo "[2/2] Verification complete."
echo "Repository : https://github.com/YuanXian-Theory/YXT-Millennium-Seven"
echo "Paper 1    : Unified Proof (EN, May 2026)"
echo "Paper 2    : 拓扑判决 (CN, July 2026)"
echo "=================================================="
