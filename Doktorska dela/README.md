# Predloga doktorskih del FS — september 2026

Slovenska predloga za doktorska dela na Fakulteti za strojništvo UL.
Izhodišče je predloga v mapi [Zakljucna dela](../Zakljucna%20dela/README.md);
oblikovne nastavitve, bibliografski slog in postopek prevajanja so enaki.

## Uporaba

1. V podatki.tex izpolnite podatke; izberite obliko \predlozil
   (Predložil/Predložila) in vpišite doktorski program za NRRP.
2. Uredite zahvalo, oba izvlečka, ključne besede in seznama oznak.
3. Odločbo o potrjeni temi shranite v tema.pdf ob predloga.tex.
   Vključijo se vse strani.
4. Nadomestite vzorčno besedilo v datotekah poglavij in vire v References.bib.
5. Izpolnite načrt ravnanja z raziskovalnimi podatki (nrrp/nrrp.tex) in
   življenjepis (zivljenjepis/zivljenjepis.tex). Odstranite vzorčno prilogo
   ali jo nadomestite z lastnimi prilogami.
6. Iz te mape izvedite:

       xelatex -interaction=nonstopmode -halt-on-error predloga.tex
       bibtex predloga
       xelatex -interaction=nonstopmode -halt-on-error predloga.tex
       xelatex -interaction=nonstopmode -halt-on-error predloga.tex

   V PowerShellu lahko celoten postopek izvedete tudi z .\build.ps1.

Potrebujete sodobno distribucijo TeX in nameščeno pisavo Times New Roman.

## Razlike glede na predlogo zaključnih del

Spremembe temeljijo na priloženih dokumentih
Predloga doktorskih del na FS september2026.docx in
Navodila-za-izdelavo-in-oblikovni-izgled-doktorskih-del september2026 Track Changes.docx.

- Platnica in notranja naslovnica navajata »Doktorsko delo« in
  »Predložil(a) Fakulteti za strojništvo Univerze v Ljubljani za pridobitev
  znanstvenega naslova doktor znanosti«; položaji so umerjeni po Wordovem PDF-ju.
- Tekoča številka je oblike DR II; namesto podpisane teme se vstavi odločba
  o potrjeni temi doktorskega dela.
- Vsebinska poglavja: 1 Uvod (s podpoglavjem Struktura doktorskega dela),
  2 Pregled stanja razvoja, 3 Raziskovalne hipoteze / cilji (s podpoglavjem
  Publikacije), 4 Metodologija raziskav, 5 Rezultati, 6 Diskusija,
  7 Zaključki (s podpoglavjem Predlogi za nadaljnje delo).
- Za literaturo sledijo obvezni Načrt ravnanja z raziskovalnimi podatki (NRRP),
  neobvezne priloge in Življenjepis. Vsi so vključeni v kazalo in imajo
  obliko formalnih naslovov (18 pt s spodnjo črto), kot v Wordovi predlogi.
