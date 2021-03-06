(* ::Package:: *)

(* ::Title:: *)
(*Style*)


Begin["Toolbox`Private`"];

commonToAll={Axes->False,Frame->True,PlotStyle->Automatic,BaseStyle->{"FontFamily"->"Helvetica",FontSize->12,ImagePadding->{{Scaled[.035],Scaled[.01]},{Automatic,Automatic}}},ImageSize->350,PlotRange->All};
plotFunctions2D={ListPlot,ListLogPlot,ListLogLogPlot,ListLogLinearPlot,Plot,LogPlot,LogLogPlot,LogLinearPlot,ParametricPlot,DateListPlot,DateListLogPlot,Histogram,SmoothHistogram};
Do[SetOptions[plotFunc,Sequence@@FilterRules[commonToAll,Options[plotFunc]]],{plotFunc,plotFunctions2D}]

commonToAll3D={BaseStyle->{"FontFamily"->"Helvetica",FontSize->12},ImageSize->350,PlotRange->All};
plotFunctions3D={Plot3D};
Do[SetOptions[plotFunc,Sequence@@FilterRules[commonToAll3D,Options[plotFunc]]],{plotFunc,plotFunctions3D}]

SetOptions[SlideView,AppearanceElements->All];

(*Charts*)
commonToAllCharts={PlotStyle->Automatic,BaseStyle->{"FontFamily"->"Helvetica",FontSize->12},ImageSize->350,PlotRange->All,LabelStyle->{FontFamily->"Helvetica"}};
charts={BarChart};
Do[SetOptions[plotFunc,Sequence@@FilterRules[commonToAll3D,Options[plotFunc]]],{plotFunc,charts}]

End[];
