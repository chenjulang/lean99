/-
# Problem 14
(Easy 🌟) Duplicate the elements of a list.
-/

variable {α : Type}

def dupli (l : List α) : List α :=
  -- sorry
  match l with
  | [] => []
  | a :: b => a :: a :: dupli b
  -- sorry

-- The following codes are for test and you should not edit these.

example : dupli [1, 2, 3] = [1, 1, 2, 2, 3, 3] := by rfl

example : dupli ([] : List α) = [] := by rfl

example : dupli ['a', 'b', 'c', 'c', 'd']
  = ['a', 'a', 'b', 'b', 'c', 'c', 'c', 'c', 'd', 'd'] := by rfl
