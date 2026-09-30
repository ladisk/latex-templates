% FS 2026: numeric bibliography in citation order, following supplied Word examples.
% Retains the BibTeX + natbib workflow of the earlier LADISK templates.
% Deli reference so loceni s piko; tudi vsak celoten vnos se konca s piko.
ENTRY
  { author editor title booktitle journal volume number edition publisher
    address year pages school institution type howpublished note doi url urldate }
  {} {}
INTEGERS { nameptr numnames shown }
STRINGS { names result part pending tmp }
FUNCTION {names.format}
{ 'names :=
  names num.names$ 'numnames :=
  numnames #2 > { #2 'shown := } { numnames 'shown := } if$
  #1 'nameptr :=
  "" 'result :=
  { nameptr shown #1 + < }
  { names nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 'part :=
    nameptr #1 > { result ", " * 'result := } 'skip$ if$
    result part * 'result :=
    nameptr #1 + 'nameptr :=
  } while$
  numnames #2 > { result " \textit{et~al.}" * 'result := } 'skip$ if$
  result
}
% Izpise locilo prejsnjega dela in nato ta del. Zakljucno cakajoce locilo
% izpise entry.end, zato se vsak vnos konca s piko brez podvajanja pike.
FUNCTION {sentence}
{ duplicate$ empty$
    { pop$ }
    { pending write$
      duplicate$ write$
      duplicate$ add.period$ =
        { " " 'pending := }
        { ". " 'pending := }
      if$
    }
  if$
}
FUNCTION {emph}
{ duplicate$ empty$ 'skip$ { "\textit{" swap$ * "}" * } if$ }
FUNCTION {join.comma}
{ 'tmp :=
  duplicate$ empty$
    { pop$ tmp }
    { tmp empty$ 'skip$ { ", " * tmp * } if$ }
  if$
}
FUNCTION {place.year.str}
{ address year join.comma }
FUNCTION {pages.str}
{ pages empty$ { "" } { "str. " pages * } if$ }
FUNCTION {editors.str}
{ editor empty$ { "" } { editor names.format " (ur.): " * } if$ }
FUNCTION {authors}
{ author empty$
    { editor empty$ 'skip$ { editor names.format " (ur.): " * write$ } if$ }
    { author names.format ": " * write$ }
  if$
}
FUNCTION {entry.begin}
{ newline$ "\bibitem{" write$ cite$ write$ "}" write$ newline$
  "" 'pending :=
}
FUNCTION {entry.end}
{ doi empty$ 'skip$
    { pending write$
      "DOI: \href{https://doi.org/" write$ doi write$ "}{\nolinkurl{" write$
      doi write$ "}}" write$
      ". " 'pending :=
    }
  if$
  url empty$ 'skip$
    { pending write$
      "URL: \url{" write$ url write$ "}" write$
      urldate empty$
        { "Missing urldate in " cite$ * warning$ }
        { ", ogled: " write$ urldate write$ }
      if$
      ". " 'pending :=
    }
  if$
  note sentence
  pending write$
  newline$
}
FUNCTION {book}
{ entry.begin authors title emph sentence
  edition empty$ 'skip$ { edition " izdaja" * sentence } if$
  publisher place.year.str join.comma sentence
  entry.end
}
FUNCTION {article}
{ entry.begin authors title sentence
  journal emph
  volume empty$ 'skip$ { " " * volume * } if$
  year empty$ 'skip$ { " (" * year * ")" * } if$
  sentence
  entry.end
}
FUNCTION {incollection}
{ entry.begin authors title sentence
  "V: " editors.str * booktitle emph * sentence
  edition empty$ 'skip$ { edition " izdaja" * sentence } if$
  publisher place.year.str join.comma pages.str join.comma sentence
  entry.end
}
FUNCTION {inproceedings}
{ entry.begin authors title sentence
  "V: " editors.str * booktitle emph * sentence
  place.year.str pages.str join.comma sentence
  entry.end
}
FUNCTION {thesis}
{ entry.begin authors title emph sentence
  type empty$ { "Zaklju\v{c}no delo" } { type } if$ sentence
  school place.year.str join.comma sentence
  entry.end
}
FUNCTION {phdthesis} { thesis }
FUNCTION {mastersthesis} { thesis }
FUNCTION {techreport}
{ entry.begin authors title sentence
  institution place.year.str join.comma sentence
  entry.end
}
FUNCTION {misc}
{ entry.begin authors title sentence howpublished sentence
  year sentence
  entry.end
}
FUNCTION {booklet} { misc }
FUNCTION {manual} { book }
FUNCTION {proceedings} { book }
FUNCTION {unpublished} { misc }
FUNCTION {conference} { inproceedings }
FUNCTION {default.type} { misc }
READ
FUNCTION {begin.bib}
{ "\begin{thebibliography}{99}" write$ newline$ }
EXECUTE {begin.bib}
ITERATE {call.type$}
FUNCTION {end.bib}
{ newline$ "\end{thebibliography}" write$ newline$ }
EXECUTE {end.bib}
