import FinalResearchProject.Basic

/-! # Project - Pascal & Anti-Pascal Triangles -/

import Std.Data.List.Basic
open Std


def Triangle := List (List Nat)


def pascalsTriangle : Triangle :=
  [ [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1],
    [1, 5, 10, 10, 5, 1] ]


def antipascalsTriangle : Triangle :=
  [ [4],
    [2, 6],
    [5, 7, 1],
    [8, 3, 10, 9] ]


def antiPascalRule (T : Triangle) : Bool :=
  T.enumAll (fun (i, row) =>
    if h : i + 1 < T.length then
      row.enumAll (fun (j, x) =>
        let belowLeft  := T.get! (i + 1) |>.get! j
        let belowRight := T.get! (i + 1) |>.get! (j + 1)
        x == Nat.absDiff belowLeft belowRight)
    else
      true)  


#eval antiPascalRule antipascalsTriangle   
#eval antiPascalRule pascalsTriangle      

open Nat List

def sum1to (n : Nat) : Nat :=
  n * (n + 1) / 2

def is_small (n : Nat) : Bool := n ≤ 2017
def is_large (n : Nat) : Bool := n ≥ 2018


theorem impossibleStatement :
    ¬ ∃ (m : Nat → Nat),
      (∀ n : Nat,
        1 ≤ n ∧ n ≤ 2018 →
          1 ≤ m n ∧ m n ≤ sum1to 2018) :=
by
---Left at sorry b/c cannot be proven
  sorry









