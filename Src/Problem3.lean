/-
# Problem 3
Find the K'th element of a list.
-/

variable {α : Type}

def elementAt (l : List α) (k : Nat) : Option α :=
  -- sorry
  match k, l with
  | _, [] => none
  | 0, _ => none
  | 1, [a] => some a
  | 1, a :: _ => some a
  | Nat.succ k, _ :: a => elementAt a k
  -- sorry

-- The following is a test case, you don't need to edit it.

example : elementAt ['a', 'b', 'c', 'd', 'e'] 3 = some 'c' := by rfl

example : elementAt ['a', 'b', 'c', 'd', 'e'] 6 = none := by rfl

example : elementAt ['a', 'b', 'c', 'd', 'e'] 0 = none := by rfl

example : elementAt ([] : List α) 0 = none := by rfl

example : elementAt [1, 2, 3] 2 = some 2 := by rfl
