signature paperTheory =
sig
  type thm = Thm.thm
  
  val paper_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [AVL_trees] Parent theory of "paper"
   
   
*)
end
