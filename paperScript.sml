open HolKernel Parse boolLib bossLib;

open AVL_treesTheory;

open EmitTeX;

val _ = new_theory "paper";

val _ = export_theory ();

(* Generate all theorems (and definitions) from some theories *)
val _ = let in
	OS.FileSys.remove "HOLAVLXXtrees.tex" handle e => {};
	OS.FileSys.remove "references.tex" handle e => {};

	EmitTeX.print_theories_as_tex_doc
	    ["AVL_trees"]
	    "references" (* references.tex includes all other generated TeX files *)
    end;
