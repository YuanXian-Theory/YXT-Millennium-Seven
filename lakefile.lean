import Lake
open Lake DSL

package «YXT-Millennium-Seven» {
  -- Package metadata
  version := v!"0.1.0"
  keywords := #["lean4", "formal-verification", "millennium-problems", "yuanxian-theory", "tcsc", "t64"]
  description := "Unified Lean 4 formalization of the Seven Millennium Problems under YuanXian Theory (YXT)"
  
  -- Dependencies
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,           -- nicer unicode output
    ⟨`autoImplicit, false⟩
  ]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.19.0"

require «YXTT2.0» from git
  "https://github.com/YuanXian-Theory/YXTT2.0.git" @ "main"  -- 核心公理仓库

-- Main library
lean_lib «YXTMillennium» {
  srcDir := "formalization/Lean4"
  roots := #["Millennium"]
}

-- Optional executable (for testing)
lean_exe «millennium-check» {
  root := `MillenniumCheck
  exeName := "millennium-check"
}

-- Post-build message
postBuild := λ pkg _ => do
  IO.println s!"✅ YXT-Millennium-Seven successfully built."
  IO.println s!"   Seven Millennium Problems formalization is ready."
  IO.println s!"   Main entry point: Millennium.lean"
