(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     24174,        746]
NotebookOptionsPosition[     23763,        713]
NotebookOutlinePosition[     24527,        740]
CellTagsIndexPosition[     24484,        737]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Geometric Transformations", "Title", "PluginEmbeddedContent",
 CellFrame->{{0, 0}, {0.5, 0}}],

Cell[TextData[{
 "\n\n\n",
 Cell[BoxData[
  Graphics3DBox[{
    {RGBColor[1, 0, 0], Arrow3DBox[{{0, 0, 0}, {1, 0, 0}}], 
     Arrow3DBox[{{0, 0, 0}, {0, 1, 0}}], Arrow3DBox[{{0, 0, 0}, {0, 0, 1}}]}, 
    {RGBColor[0, 0, 1], 
     Arrow3DBox[
      NCache[{{1, 1, 0}, {
        1 + 2^Rational[-1, 2], 1 + 2^Rational[-1, 2], 0}}, {{1, 1, 0}, {
        1.7071067811865475`, 1.7071067811865475`, 0}}]], 
     Arrow3DBox[
      NCache[{{1, 1, 0}, {
        1 - 2^Rational[-1, 2], 1 + 2^Rational[-1, 2], 0}}, {{1, 1, 0}, {
        0.29289321881345254`, 1.7071067811865475`, 0}}]], 
     Arrow3DBox[{{1, 1, 0}, {1, 1, 1}}]}},
   Axes->True,
   Boxed->True,
   ImageSize->{271., Automatic},
   ViewPoint->{1.352039020061641, -2.781151280669928, 1.3737496286655642`},
   ViewVertical->{0.05700374340117913, -0.2092175986712958, 
    1.6664882454757448`}]]],
 "\n\nThe above figure shows a coordinate system in \[OpenCurlyQuote]RED\
\[CloseCurlyQuote] (OX,OY,OZ) indicating Global coordinate system and in \
\[OpenCurlyQuote]BLUE\[CloseCurlyQuote] ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"O", "'"}], 
      RowBox[{"X", "'"}]}], ",", 
     RowBox[{
      RowBox[{"O", "'"}], 
      RowBox[{"Y", "'"}]}], ",", 
     RowBox[{
      RowBox[{"O", "'"}], 
      RowBox[{"Z", "'"}]}]}], ")"}], TraditionalForm]]],
 " indicating New cordinate system (Local Coordinate system)"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 StyleBox[
  RowBox[{"\[IndentingNewLine]", "Translation"}], "Subsection"]], "Input", \
"PluginEmbeddedContent"],

Cell[TextData[{
 "There are two notions of constructing the transformation matrix ( setting \
row or cloumn elements accordingly ). This page consists of setting \
transformation matrix with column elements.\n\nA point in Local coordinate \
system ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "l"], ",", 
     SubscriptBox["y", "l"], ",", 
     SubscriptBox["z", "l"]}], ")"}], TraditionalForm]]],
 " need to be transformed to Global coordinate system , let us say it as ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "g"], ",", 
     SubscriptBox["y", "g"], ",", 
     SubscriptBox["z", "g"]}], ")"}], TraditionalForm]]],
 "\n\nSince we know the Location and orientation of Local coordinate system \
with respect to Global coordinate system (i.e Origin position and direction \
cosines of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"O", "'"}], 
     RowBox[{"X", "'"}]}], ",", 
    RowBox[{
     RowBox[{"O", "'"}], 
     RowBox[{"Y", "'"}]}], ",", 
    RowBox[{
     RowBox[{"O", "'"}], 
     RowBox[{"Z", "'"}]}]}], TraditionalForm]]],
 " )\n\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "l"], ",", 
     SubscriptBox["y", "l"], ",", 
     SubscriptBox["z", "l"]}], ")"}], TraditionalForm]]],
 " is wrt O\[CloseCurlyQuote] (New cordinate system)\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "g"], ",", 
     SubscriptBox["y", "g"], ",", 
     SubscriptBox["z", "g"]}], ")"}], TraditionalForm]]],
 " is wrt to O (Global Coordinate system)\n\nO\[CloseCurlyQuote] wrt to O is ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "o"], ",", 
     SubscriptBox["y", "o"], ",", 
     SubscriptBox["z", "0"]}], ")"}], TraditionalForm]]],
 "\n\n",
 StyleBox["Transformation Matrix:",
  FontWeight->"Bold"],
 "\n\nFor a 3D spatial coordinates we would construct a ",
 Cell[BoxData[
  FormBox[
   RowBox[{"4", "x1", " "}], TraditionalForm]]],
 "Matrix where last element of the column would be 1. If you are familiar \
with this notation we may recollect that it would be easy when \ndealing with \
Scaling feature.\n\nSo, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["x", "o"], ",", 
     SubscriptBox["y", "o"], ",", 
     SubscriptBox["z", "o"]}], ")"}], TraditionalForm]]],
 " is constructed as ",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {
        SubscriptBox["x", "l"]},
       {
        SubscriptBox["y", "l"]},
       {
        SubscriptBox["z", "l"]},
       {"1"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]], TraditionalForm]]],
 "\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[CapitalTau]", "=", 
    RowBox[{"(", GridBox[{
       {"1", "0", "0", 
        RowBox[{"-", 
         SubscriptBox["x", "o"]}]},
       {"0", "1", "0", 
        RowBox[{"-", 
         SubscriptBox["y", "o"]}]},
       {"0", "0", "1", 
        RowBox[{"-", 
         SubscriptBox["z", "o"]}]},
       {"0", "0", "0", "1"}
      }], ")"}]}], TraditionalForm]],
  FontWeight->"Bold"],
 "\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"X", "=", 
    RowBox[{"\[CapitalTau]X", "'"}]}], TraditionalForm]]],
 "\n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    TagBox[
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {
         SubscriptBox["x", "g"]},
        {
         SubscriptBox["y", "g"]},
        {
         SubscriptBox["z", "g"]},
        {"1"}
       },
       GridBoxAlignment->{
        "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
         "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.7]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
     Function[BoxForm`e$, 
      MatrixForm[BoxForm`e$]]], "=", 
    FormBox[
     RowBox[{
      RowBox[{"(", GridBox[{
         {"1", "0", "0", 
          RowBox[{"-", 
           SubscriptBox["x", "o"]}]},
         {"0", "1", "0", 
          RowBox[{"-", 
           SubscriptBox["y", "o"]}]},
         {"0", "0", "1", 
          RowBox[{"-", 
           SubscriptBox["z", "o"]}]},
         {"0", "0", "0", "1"}
        }], ")"}], 
      TagBox[
       RowBox[{"(", "\[NoBreak]", GridBox[{
          {
           SubscriptBox["x", "l"]},
          {
           SubscriptBox["y", "l"]},
          {
           SubscriptBox["z", "l"]},
          {"1"}
         },
         GridBoxAlignment->{
          "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[0.4]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
       Function[BoxForm`e$, 
        MatrixForm[BoxForm`e$]]]}],
     TraditionalForm]}], TraditionalForm]]],
 "\n\n",
 Cell[BoxData[
  FormBox[
   TagBox[
    RowBox[{
     TagBox[
      RowBox[{"(", "\[NoBreak]", GridBox[{
         {
          SubscriptBox["x", "g"]},
         {
          SubscriptBox["y", "g"]},
         {
          SubscriptBox["z", "g"]},
         {"1"}
        },
        GridBoxAlignment->{
         "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
          "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.7]}, 
            Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
            Offset[0.2], {
             Offset[0.4]}, 
            Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
      Function[BoxForm`e$, 
       MatrixForm[BoxForm`e$]]], "=", 
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {
         RowBox[{
          SubscriptBox["x", "l"], "-", 
          SubscriptBox["x", "o"]}]},
        {
         RowBox[{
          SubscriptBox["y", "l"], "-", 
          SubscriptBox["y", "o"]}]},
        {
         RowBox[{
          SubscriptBox["z", "l"], "-", 
          SubscriptBox["z", "o"]}]},
        {"1"}
       },
       GridBoxAlignment->{
        "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
         "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.7]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]], TraditionalForm]]],
 "\n\nBy comparing both sides, above condition is what we learnt in high \
school\n"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 StyleBox["Rotation", "Subsection"]], "Input", "PluginEmbeddedContent"],

Cell[TextData[{
 "By cosidering the Coordinate systems used in Transformation matrix to \
formulate Rotation matrix.\nAgain, to mention there are many ways to \
formulate the matrix with right usage of sign convention.\n\n\n",
 StyleBox["Rotation Matrix:\n\nAbout X:\n",
  FontWeight->"Bold"],
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[DoubleStruckCapitalR]", "X"], "=", 
    RowBox[{"(", GridBox[{
       {"1", "0", "0", "0"},
       {"0", 
        RowBox[{"Cos", "[", "\[Alpha]", "]"}], 
        RowBox[{"-", 
         RowBox[{"Sin", "[", "\[Alpha]", "]"}]}], "0"},
       {"0", 
        RowBox[{"Sin", "[", "\[Alpha]", "]"}], 
        RowBox[{"Cos", "[", "\[Alpha]", "]"}], "0"},
       {"0", "0", "0", "1"}
      }], ")"}]}], TraditionalForm]]],
 "\n\n",
 StyleBox["About Y:",
  FontWeight->"Bold"],
 "\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[DoubleStruckCapitalR]", "Y"], "=", 
    RowBox[{"(", GridBox[{
       {
        RowBox[{"Cos", "[", "\[Beta]", "]"}], "0", 
        RowBox[{"Sin", "[", "\[Beta]", "]"}], "0"},
       {"0", "1", "0", "0"},
       {
        RowBox[{"-", 
         RowBox[{"Sin", "[", "\[Beta]", "]"}]}], "0", 
        RowBox[{"Cos", "[", "\[Beta]", "]"}], "0"},
       {"0", "0", "0", "1"}
      }], ")"}]}], TraditionalForm]]],
 "\n\n",
 StyleBox["About Z:",
  FontWeight->"Bold"],
 "\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[DoubleStruckCapitalR]", "Z"], "=", 
    RowBox[{"(", GridBox[{
       {
        RowBox[{"Cos", "[", "\[Gamma]", "]"}], 
        RowBox[{"-", 
         RowBox[{"SIn", "[", "\[Gamma]", "]"}]}], "0", "0"},
       {
        RowBox[{"Sin", "[", "\[Gamma]", "]"}], 
        RowBox[{"Cos", "[", "\[Gamma]", "]"}], "0", "0"},
       {"0", "0", "1", "0"},
       {"0", "0", "0", "1"}
      }], ")"}]}], TraditionalForm]]],
 "\n"
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["Transforming Coordinates from Local to Global coordinate system",
  FontWeight->"Bold"],
 " "
}], "Subsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "To convert a point in Local coordinate system into Global coordinate system \
a mere Translation is not sufficient.\nAs Local coordinate system is aligned \
at an angle to Global system, Local system need to be rotated \
correspondingly.\n\nSo, we have ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{"OX", ",", "OY", ",", "OZ"}], ")"}], " ", "and", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"O", "'"}], 
       RowBox[{"X", "'"}]}], ",", 
      RowBox[{
       RowBox[{"O", "'"}], 
       RowBox[{"Y", "'"}]}], ",", 
      RowBox[{
       RowBox[{"O", "'"}], 
       RowBox[{"Z", "'"}]}]}], ")"}]}], TraditionalForm]]],
 ".\n\nWe follow as below:\n\n",
 StyleBox["Step-1:\n",
  FontSlant->"Italic"],
 "We try to coinside O\[CloseCurlyQuote]Z\[CloseCurlyQuote] with OZ after \
translation.\nSo, we try to slam O\[CloseCurlyQuote]Z\[CloseCurlyQuote] into  \
XZ plane by rotating it about X-axis\nWe rotate ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Alpha]"}], TraditionalForm]]],
 " angle for this purpose\n\n",
 StyleBox["Step-2:\n",
  FontSlant->"Italic"],
 "Next we try to rotate it about Y-axis and align O\[CloseCurlyQuote]Z\
\[CloseCurlyQuote] with OZ.\nWe rotate ",
 Cell[BoxData[
  FormBox[
   RowBox[{"-", "\[Beta]"}], TraditionalForm]]],
 " angle for this purpose\n\n",
 StyleBox["Step-3:",
  FontSlant->"Italic"],
 "\nNow O\[CloseCurlyQuote]Z\[CloseCurlyQuote] is aligned with OZ , but we \
are not done. We still need to align O\[CloseCurlyQuote]X\[CloseCurlyQuote] \
and O\[CloseCurlyQuote]Y\[CloseCurlyQuote].\nThis is acheived by rotating \
about Z-axis\nWe rotate ",
 Cell[BoxData[
  FormBox[
   RowBox[{"+", "\[Delta]"}], TraditionalForm]]],
 " angle for this purpose\n"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{
  RowBox[{"anglecalc", "[", 
   RowBox[{"o_", ",", "dc_"}], "]"}], ":=", "\n", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "p", ",", "v1", ",", "v2", ",", "v3", ",", "tempv2", ",", "u", ",", 
      "\[Alpha]", ",", "\[Beta]", ",", "\[Delta]", ",", "tr", ",", 
      "r\[Alpha]", ",", "r\[Beta]", ",", "temp"}], "}"}], ",", "\n", 
    RowBox[{
     RowBox[{"p", "=", "o"}], ";", 
     RowBox[{"(*", 
      RowBox[{"New", " ", "Coordinate", " ", "system", " ", "Origin"}], 
      "*)"}], "\[IndentingNewLine]", 
     RowBox[{"v1", "=", 
      RowBox[{"dc", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"New", " ", "Coordinate", " ", "system", " ", "X"}], "-", 
       RowBox[{"axis", " ", "dc"}]}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"tempv2", "=", 
      RowBox[{"dc", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"v2", "=", 
      RowBox[{"Normalize", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"(", "v1", ")"}], "\[Cross]", 
          RowBox[{"(", "tempv2", ")"}]}], ")"}], "\[Cross]", 
        RowBox[{"(", "v1", ")"}]}], "]"}]}], ";", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"New", " ", "Coordinate", " ", "system", " ", "Y"}], "-", 
       RowBox[{"axis", " ", "dc"}]}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"v3", "=", 
      RowBox[{"Normalize", "[", 
       RowBox[{"v1", "\[Cross]", "v2"}], "]"}]}], ";", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"New", " ", "Coordinate", " ", "system", " ", "Z"}], "-", 
       RowBox[{"axis", " ", "dc"}]}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "end", " ", "of", " ", "Data", " ", "of", " ", "New", " ", "Coordinate",
        " ", "Sysytem"}], "*)"}], "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "direction", " ", "of", " ", "vector", " ", "and", " ", "calculation", 
       " ", "of", " ", "\[Alpha]", " ", "and", " ", "\[Beta]"}], "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{"u", "=", 
      RowBox[{"Normalize", "[", "v3", "]"}]}], ";", "\n", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"u", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[Equal]", "0"}], " ", "&&", " ", 
        RowBox[{
         RowBox[{"u", "[", 
          RowBox[{"[", "3", "]"}], "]"}], "\[Equal]", "0"}]}], ",", 
       RowBox[{"\[Alpha]", "=", "0"}], ",", 
       RowBox[{"\[Alpha]", "=", 
        RowBox[{"ArcCos", "[", 
         RowBox[{
          RowBox[{"u", "[", 
           RowBox[{"[", "3", "]"}], "]"}], "/", 
          RowBox[{"(", 
           RowBox[{"Sqrt", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"u", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "^", "2"}], "+", 
             RowBox[{
              RowBox[{"u", "[", 
               RowBox[{"[", "3", "]"}], "]"}], "^", "2"}]}], "]"}], ")"}]}], 
         "]"}]}]}], "]"}], ";", "\n", 
     RowBox[{"\[Beta]", "=", 
      RowBox[{"ArcSin", "[", 
       RowBox[{"u", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "end", " ", "of", " ", "calculation", " ", "of", " ", "\[Alpha]", " ", 
       "and", " ", "\[Beta]"}], "*)"}], "\[IndentingNewLine]", "\n", 
     RowBox[{"tr", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"1", ",", "0", ",", "0", ",", 
          RowBox[{"-", 
           RowBox[{"p", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "1", ",", "0", ",", 
          RowBox[{"-", 
           RowBox[{"p", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "1", ",", 
          RowBox[{"-", 
           RowBox[{"p", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0", ",", "1"}], "}"}]}], "}"}]}], ";", 
     "\n", 
     RowBox[{"r\[Alpha]", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"1", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", 
          RowBox[{"Cos", "[", "\[Alpha]", "]"}], ",", 
          RowBox[{"-", 
           RowBox[{"Sin", "[", "\[Alpha]", "]"}]}], ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", 
          RowBox[{"Sin", "[", "\[Alpha]", "]"}], ",", 
          RowBox[{"Cos", "[", "\[Alpha]", "]"}], ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0", ",", "1"}], "}"}]}], "}"}]}], ";", 
     "\n", 
     RowBox[{"r\[Beta]", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{"-", "\[Beta]"}], "]"}], ",", "0", ",", 
          RowBox[{"Sin", "[", 
           RowBox[{"-", "\[Beta]"}], "]"}], ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "1", ",", "0", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"Sin", "[", 
            RowBox[{"-", "\[Beta]"}], "]"}]}], ",", "0", ",", 
          RowBox[{"Cos", "[", 
           RowBox[{"-", "\[Beta]"}], "]"}], ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0", ",", "1"}], "}"}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", "\n", 
     RowBox[{"temp", "=", 
      RowBox[{"r\[Beta]", ".", "r\[Alpha]", ".", "tr", ".", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"v1", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"v1", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"v1", "[", 
           RowBox[{"[", "3", "]"}], "]"}], "}"}], ",", 
         RowBox[{"{", "1", "}"}]}], "}"}]}]}], ";", "\n", 
     RowBox[{"\[Delta]", "=", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"temp", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[Equal]", "0"}], " ", "&&", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"temp", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[Equal]", "0"}]}], ",", "0", ",", 
        RowBox[{
         RowBox[{"ArcTan", "[", 
          RowBox[{
           RowBox[{"temp", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"temp", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\n", 
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "\[Beta]", ",", "\[Delta]"}], "}"}]}]}], "\n", 
   "]"}]}]], "Input", "PluginEmbeddedContent"],

Cell[TextData[{
 "\nThe above ",
 StyleBox["anglecalc",
  FontWeight->"Bold",
  FontSlant->"Italic"],
 " Module takes Origin coordinates and direction cosines of O\
\[CloseCurlyQuote]X\[CloseCurlyQuote] , \
O\[CloseCurlyQuote]Y\[CloseCurlyQuote] in List format and returns ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{"\[Alpha]", ",", "\[Beta]", ",", "\[Delta]"}], "}"}], 
   TraditionalForm]]],
 "\nWhere \[Alpha],\[Beta],\[Delta] are Angles that need to be rotated about \
X,Y,Z axis respectively to align Local Coordinate system with Global \
Coordinate system\n"
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Example", "Subsubsection", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"neworigin", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"newDCs", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1", 
        SqrtBox["2"]], ",", 
       FractionBox["1", 
        SqrtBox["2"]], ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["1", 
         SqrtBox["2"]]}], ",", 
       FractionBox["1", 
        SqrtBox["2"]], ",", "0"}], "}"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"anglecalc", "[", 
  RowBox[{"neworigin", ",", "newDCs"}], "]"}]}], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", 
   FractionBox["\[Pi]", "4"]}], "}"}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "We can observe two things from above exaple,\n1. Angles \[Alpha],\[Beta],\
\[Delta]  are independent of neworigin\n2. The new DC\[CloseCurlyQuote]s are \
nothing but O\[CloseCurlyQuote]X\[CloseCurlyQuote] and O\[CloseCurlyQuote]Y\
\[CloseCurlyQuote] aligned at an angle ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["45", "0"], TraditionalForm]]],
 " to new coordinate system."
}], "Text", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1253.55, 2845.},
Visible->True,
AuthoredSize->{1254, 2845},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Microsoft Windows (64-bit) (April 11, 2016)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "Default.nb"]]}, WindowSize -> {775, 657}, 
  WindowMargins -> {{0, Automatic}, {Automatic, 0}}, FrontEndVersion -> 
  "10.4 for Microsoft Windows (64-bit) (April 11, 2016)", StyleDefinitions -> 
  "Default.nb"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 99, 1, 69, "Title"],
Cell[1588, 38, 1443, 39, 314, "Text"],
Cell[3034, 79, 126, 3, 67, "Input"],
Cell[3163, 84, 7507, 242, 759, "Text"],
Cell[10673, 328, 85, 1, 29, "Input"],
Cell[10761, 331, 1870, 60, 447, "Text"],
Cell[CellGroupData[{
Cell[12656, 395, 163, 4, 29, "Subsection"],
Cell[12822, 401, 1796, 49, 396, "Text"],
Cell[14621, 452, 7077, 188, 477, "Input"],
Cell[21701, 642, 616, 16, 73, "Text"],
Cell[CellGroupData[{
Cell[22342, 662, 57, 0, 27, "Subsubsection"],
Cell[CellGroupData[{
Cell[22424, 666, 714, 25, 81, "Input"],
Cell[23141, 693, 134, 3, 29, "Output"]
}, Open  ]],
Cell[23290, 699, 433, 9, 56, "Text"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Iu0FwS9d@16vqCw6qmCNVIdi *)
