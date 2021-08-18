(* ::Package:: *)

(* ::Input:: *)
(*BeginPackage["SICM`"]*)


(* ::Input:: *)
(*<<Notation`*)


(* ::Input:: *)
(*\[CapitalGamma][q_][t_]:= Prepend[Table[D[q[t],{t,i}],{i,0,1}],t]*)


(* ::Input:: *)
(*dotrules={Times[1.`,vx_]:>vx,Times[0.1`,vx_]:>vx,Dot[1,vx_]:>vx, Dot[vx_,1]:>vx};*)


(* ::Input:: *)
(*pd1[L_][args__] :=*)
(*    Block[{nargs = Length[List[args][[2]]]},*)
(*        If[nargs > 1,*)
(*            Table[(Derivative[0, ReplacePart[ConstantArray[0, nargs], i -> 1], ConstantArray[0, nargs]][L] /. dotrules)[args], {i, 1, nargs}]*)
(*            ,*)
(*            (Derivative[0, 1, 0][L] /. dotrules)[args]*)
(*        ]*)
(*    ]*)


(* ::Input:: *)
(*pd2[L_][args__] :=*)
(*    Block[{nargs = Length[List[args][[2]]]},*)
(*        If[nargs > 1,*)
(*            Table[(Derivative[0, ConstantArray[0, nargs], ReplacePart[ConstantArray[0, nargs], i -> 1]][L] /. dotrules)[args], {i, 1, nargs}]*)
(*            ,*)
(*            (Derivative[0, 0, 1][L] /. dotrules)[args]*)
(*        ]*)
(*    ]*)


(* ::Input:: *)
(*Notation[NotationTemplateTag[(\[DifferentialD]/\[DifferentialD]t)(\[PartialD]L_/\[PartialD]\!\(\*OverscriptBox[\(q_\), \(.\)]\))-\[PartialD]L_/\[PartialD]q_] \[DoubleLongRightArrow] NotationTemplateTag[D[(pd2[L_]@@\[CapitalGamma][q_][t]),t]-pd1[L_]@@\[CapitalGamma][q_][t]]]*)


(* ::Input:: *)
(*Notation[NotationTemplateTag[Subscript[S, L_][q_][t1_,t2_]] \[DoubleLongRightArrow] NotationTemplateTag[\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(t1_\), \(t2_\)]\(L_ @@ \(\[CapitalGamma][q_]\)[t] \[DifferentialD]t\)\)]]*)


(* ::Input:: *)
(*EndPackage[]*)
