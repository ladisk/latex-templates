param()
$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
    & xelatex -interaction=nonstopmode -halt-on-error predloga.tex
    if ($LASTEXITCODE -ne 0) { throw 'Prvi prevod XeLaTeX ni uspel.' }
    & bibtex predloga
    if ($LASTEXITCODE -ne 0) { throw 'BibTeX ni uspel.' }
    & xelatex -interaction=nonstopmode -halt-on-error predloga.tex
    if ($LASTEXITCODE -ne 0) { throw 'Drugi prevod XeLaTeX ni uspel.' }
    & xelatex -interaction=nonstopmode -halt-on-error predloga.tex
    if ($LASTEXITCODE -ne 0) { throw 'Tretji prevod XeLaTeX ni uspel.' }
} finally {
    Pop-Location
}
