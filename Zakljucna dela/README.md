# Predloga zaključnih del FS — september 2026

Skupna slovenska predloga za zaključne naloge UN I. stopnje RRP,
diplomska dela VS I. stopnje PAP in magistrska dela II. stopnje.
Privzeto je izbrana zaključna naloga UN. Predloga za doktorska dela je v mapi
[Doktorska dela](../Doktorska%20dela/README.md).

## Uporaba

1. V podatki.tex izpolnite podatke in izberite natanko eno definicijo \tipDela.
2. Uredite zahvalo, oba izvlečka, ključne besede in seznama oznak.
3. Podpisano temo shranite v tema.pdf ob predloga.tex. Vključijo se vse strani.
4. Nadomestite vzorčno besedilo v datotekah poglavij in vire v References.bib.
5. Odstranite vzorčno prilogo ali jo nadomestite z lastnimi prilogami.
6. Iz te mape izvedite:

       xelatex -interaction=nonstopmode -halt-on-error predloga.tex
       bibtex predloga
       xelatex -interaction=nonstopmode -halt-on-error predloga.tex
       xelatex -interaction=nonstopmode -halt-on-error predloga.tex

Potrebujete sodobno distribucijo TeX in nameščeno pisavo Times New Roman.
V PowerShellu lahko celoten postopek izvedete tudi z .\build.ps1.
V TeXstudiu nastavite predloga.tex kot glavni dokument in prevajalnik XeLaTeX.
Nastavitve dopuščajo tudi LuaLaTeX, referenčni postopek pa uporablja XeLaTeX.
PDFLaTeX ni podprt, ker želimo uporabiti dejansko Wordovo pisavo.
Matematika za zdaj ohranja standardne pisave LaTeX iz prejšnjih predlog.

## Povezava s starimi predlogami

Ohranjeni so razred book, delitev po mapah prveStrani, oznake, uvod,
teorija, metodologija, rezultati, diskusija, zakljucki, dodatki,
znana imena podatkovnih ukazov ter uporaba natbib, BibTeX, fancyhdr,
titlesec, tocloft, longtable in drugih paketov iz starih predlog LADISK.
Podatki in oblikovne nastavitve so zaradi preglednosti izločeni iz glavne datoteke.

Spremembe temeljijo na priloženih dokumentih
Predloga-zakljucnih-del-na-FS-september2026.docx in
Navodila-za-izdelavo-in-oblikovni-izgled-zakljucnih-nalog-diplomskih-in-magistrskih-del-september2026 Track changes.docx.
Pri navodilih je bila brana vsebina z vključenimi vstavitvami in izpuščenimi
izbrisi sledenja spremembam.

- Vsi trije programi uporabljajo dvostranski A4, zrcalne robove 30/25 mm,
  zgornji rob 30 mm in spodnji rob 25 mm; poglavja se začnejo na lihih straneh.
- Osnovna pisava je Times New Roman 12 pt, razmik vrstic 1,15, odstavki so brez
  zamika prve vrstice. Razmik med odstavki je 8 pt (sosednja Wordova odmika se
  ne seštevata). Zaradi različnih mehanizmov stavljenja prelomi niso nujno
  enaki kot v Wordu.
- Naslovi vsebinskih poglavij imajo 24 pt, podnaslovi 18 in 14 pt;
  četrta raven je 12 pt, neoštevilčena in brez vpisa v kazalo.
- Formalni naslovi imajo 18 pt in spodnjo črto. Seznama simbolov in okrajšav
  sta vključena v kazalo, zahvala in izvlečka pa ne. Ločenih kazal slik in
  preglednic ni, skladno z novo Wordovo predlogo.
- Štetje formalnih strani se začne pri notranji naslovnici, vidno številčenje
  pri zahvali oziroma izvlečku; vsebinski del se začne z arabskim 1.
- Izvlečka imata po navodilih praviloma 150–300 besed in največ pol strani.
- Literatura in priloge so neoštevilčene, vendar vključene v kazalo.
  Za priloge uporabite \priloga{Naslov}, za njihove podnaslove ukaze z zvezdico.
- Bibliografski slog FS2026.bst nadomesti IEEEtran_slo.bst: podpira DOI,
  URL z datumom ogleda v polju urldate, navedbo prvih dveh avtorjev/urednikov
  in »et al.« pri več kot dveh ter vrstni red citiranja.
  Podprti so knjige, članki, poglavja, konferenčni prispevki, zaključna dela,
  poročila in splošni zapisi misc. Pri zaključnih delih vnesite slovenski
  naziv vrste dela v type. Pri neobičajnih virih preverite končni zapis.

Oblikovne primere smo pripravili na novo; številke v preglednici niso
raziskovalni podatki. Wordove očitne napake pri enotah (npr. m² za volumen)
niso prenesene. Referenčni dokumenti ostajajo v lokalni mapi _word_templates.

## Pred oddajo

Preverite dejanske podatke, vstavljeno podpisano temo, izvlečka, vire in
odstranitev navodil. Po priloženih navodilih je okvir vsebinskega obsega
UN 30–60, VS 40–80 in MAG 50–100 strani; vzorčna predloga teh obsegov ne dosega.
Predloga izdela običajen PDF. Skladnost s PDF/A ni deklarirana ali preverjena;
starega paketa pdfx nismo samodejno prenesli v novi postopek XeLaTeX.

## Preverjanje prve različice

28. septembra 2026 je bil izveden celoten prevod z XeLaTeXom in BibTeXom.
Vzorčni PDF ima 38 strani; končni dnevnik je brez opozoril in presežnih vrstic.
Pregledani so bili izbrani prikazi strani, kazalo, bibliografski sklici,
začetki poglavij na lihih straneh in številčenje. Preizkušena je tudi različica
brez zahvale, s somentorjem, z dvostransko podpisano temo in dvema prilogama.
Vsi dodatni bibliografski tipi in LuaLaTeX še niso bili posebej preverjeni.
