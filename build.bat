@echo off
echo %3
cd %1
echo RAW===================================================
echo RAW=== /b/c2/cCLEANING/c0/c =========================================
echo RAW===================================================
del *.blg 2>nul
del *.bbl 2>nul
del *.aux 2>nul
del *.idx 2>nul
del *.ind 2>nul
del *.toc 2>nul
del *.lof 2>nul
del *.lot 2>nul
del *.mpx 2>nul
del *.glg 2>nul
del *.gls 2>nul
del *.glo 2>nul
del *.alg 2>nul
del *.acr 2>nul
del *.acn 2>nul
del *.out 2>nul
del *.bcf 2>nul
del *.brf 2>nul
del *.run.xml 2>nul
echo RAW===================================================
echo RAW=== /b/c2/cPDFLATEX-1/c0/c =========================================
echo RAW===================================================
pdflatex.exe %2
echo RAW===================================================
echo RAW=== /b/c2/cMAKEINDEX/c0/c/b =====================================
echo RAW===================================================
REM makeindex <%2.idx >%2.ind
echo RAW ++++++++++++++ /b/c2/cMAKEGLOSS/c0/c/b ++++++++++++++
makeindex -s %2.ist -t %2.glg -o %2.gls %2.glo
makeindex -s %2.ist -t %2.alg -o %2.acr %2.acn
echo RAW===================================================
echo RAW=== /b/c2/cPDFLATEX-2/c0/c =========================================
echo RAW===================================================
pdflatex.exe %2
echo RAW===================================================
echo RAW=== /b/c2/cBiBLaTeX/b (using biber)/c0/c ===========================
echo RAW===================================================
biber %2
echo RAW===================================================
echo RAW=== /b/c2/cPDFLATEX-3/c0/c =========================================
echo RAW===================================================
pdflatex.exe %2
echo RAW===================================================
echo RAW=== /b/c2/cBiBLaTeX-2/b (using biber)/c0/c ========================
echo RAW===================================================
biber %2
echo RAW===================================================
echo RAW=== /b/c2/cPDFLATEX-4/c0/c =========================================
echo RAW===================================================
pdflatex.exe %2
echo RAW===================================================
echo RAW=== /b/c2/cMAKEINDX-2/c0/c/b =====================================
echo RAW===================================================
echo RAW ++++++++++++++ /b/c2/cMAKEGLOSS/c0/c/b ++++++++++++++
makeindex -s %2.ist -t %2.glg -o %2.gls %2.glo
makeindex -s %2.ist -t %2.alg -o %2.acr %2.acn
glsTidy.py
echo RAW===================================================
echo RAW=== /b/c2/cPDFLATEX-5/c0/c =========================================
echo RAW===================================================
pdflatex.exe %2
