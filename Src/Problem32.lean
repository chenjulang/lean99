/-
# Problem 32
(Intermediate 🌟🌟) Determine the greatest common divisor of two positive integer numbers. Use the Euclid's algorithm.
-/

-- don't use this
#check Nat.gcd

/-- Euclidean algorithm -/
partial def gcd (m n : Nat) : Nat :=
  -- sorry
  if m = 0 then
    n
  else
    gcd (n % m) m
  -- sorry

-- The following codes are for test and you should not edit these.

example : gcd 6 0 = 6 := by native_decide

example : gcd 1 37 = 1 := by native_decide

example : gcd 6 15 = 3 := by native_decide

example : gcd 21 3 = 3 := by native_decide

example : gcd 42998431 120019 = 1 := by native_decide
