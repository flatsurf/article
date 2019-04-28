PICTURES=\
 pictures/MasurPolygon.pdf \
 pictures/RemoveEdge.pdf \
 pictures/FlipEdge.pdf \
 pictures/QuadrilateralFlip.pdf \
 pictures/Torus.pdf \
 pictures/TriangulatedTorus.pdf \
 pictures/MultiIET.pdf \
 pictures/TriangleToInterval1.pdf \
 pictures/TriangleToInterval2.pdf \
 pictures/MultiIETInduction.pdf

flatsurf_algorithms.pdf: flatsurf_algorithms.tex $(PICTURES)
	pdflatex flatsurf_algorithms.tex
	pdflatex flatsurf_algorithms.tex

pictures/%.pdf: pictures/%.tex
	cd pictures
	pdflatex -output-directory pictures $<
