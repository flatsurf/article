PICTURES=\
 pictures/MasurPolygon.pdf \
 pictures/RemoveEdge.pdf \
 pictures/FlipEdge.pdf \
 pictures/QuadrilateralFlip.pdf \
 pictures/Torus.pdf \
 pictures/TriangulatedTorus.pdf

flatsurf_algorithms.pdf: flatsurf_algorithms.tex $(PICTURES)
	pdflatex flatsurf_algorithms.tex
	pdflatex flatsurf_algorithms.tex

pictures/%.pdf: pictures/%.tex
	cd pictures
	pdflatex -output-directory pictures $<
