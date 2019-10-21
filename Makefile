PICTURES=\
 pictures/MasurPolygon.pdf \
 pictures/RemoveEdge.pdf \
 pictures/FlipEdge.pdf \
 pictures/QuadrilateralFlip.pdf \
 pictures/QuadrilateralFlip2.pdf \
 pictures/Torus.pdf \
 pictures/TriangulatedTorus.pdf \
 pictures/MultiIET.pdf \
 pictures/TriangleToInterval1.pdf \
 pictures/TriangleToInterval2.pdf \
 pictures/MultiIETInduction.pdf \
 pictures/DualCombinatorialMaps.pdf \
 pictures/ForwardTriangle.pdf \
 pictures/BackwardTriangle.pdf \
 pictures/VerticalLeftTriangle.pdf \
 pictures/VerticalRightTriangle.pdf \
 pictures/WideEdgeBinaryTree.pdf \
 pictures/ForwardFlipWithVertical.pdf \
 pictures/VerticalDisconnecting.pdf \
 pictures/LabellingSeparatricesIET.pdf \
 pictures/LabellingSeparatricesIET-2.pdf \
 pictures/LabellingSeparatricesIET-3.pdf \
 pictures/LabellingSeparatricesIET-4.pdf \
 pictures/SeparatrixDiagram.pdf

flatsurf_algorithms.pdf: flatsurf_algorithms.tex $(PICTURES)
	pdflatex flatsurf_algorithms.tex
	pdflatex flatsurf_algorithms.tex

pictures/%.pdf: pictures/%.tex
	cd pictures
	pdflatex -output-directory pictures $<

clean:
	rm -f pictures/*.pdf
	rm -f *.aux *.log
