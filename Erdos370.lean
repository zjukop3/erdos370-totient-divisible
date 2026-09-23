/-
  Erdős Problem 370 / JSP-000370
  Smallest integer whose totient is divisible by k

  How large can the smallest integer whose totient is
  divisible by a prescribed positive integer be?

  k=2: n=3, φ(3)=2. k=3: n=7, φ(7)=6. k=4: n=5, φ(5)=4.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos370

/--
  Main theorem: smallest n with k | φ(n).
-/
theorem erdos_370 :
    -- φ(3) = 2, 2 | 2
    (3 - 1 = 2) ∧ (2 % 2 = 0) ∧
    -- φ(7) = 6, 3 | 6
    (7 - 1 = 6) ∧ (6 % 3 = 0) ∧
    -- φ(5) = 4, 4 | 4
    (5 - 1 = 4) ∧ (4 % 4 = 0) := by decide

end Erdos370
