% Template LaTeX para TCC de graduação da UNIPAMPA — V2
% Copyright (c) 2026 Charles Quevedo Carpes.
% Autoria das contribuições próprias, organização e adaptações do template.
% This work may be distributed and/or modified under the conditions of the
% LaTeX Project Public License, version 1.3c or (at your option) any later version.
% License: https://www.latex-project.org/lppl/lppl-1-3c.txt (see LICENSE).
% This work has the LPPL maintenance status `author-maintained'.
% The Current Maintainer of this work is Charles Quevedo Carpes.
% Consulte AUTORIA.md para escopo, créditos e relação dos arquivos.
% Base: abntex2-alf.bst v1.9.7, Copyright 2012-2018 abnTeX2 group.
% Créditos e licença LPPL 1.3 ou posterior da base permanecem preservados.
% Alterações locais: normalização UTF-8, DOI, legislação com seção,
% eventos, trabalhos acadêmicos, títulos/subtítulos e apresentação de páginas.
% Esta variante não é mantida nem suportada pela equipe abnTeX2.
% Original disponível em https://ctan.org/pkg/abntex2

% Revisao UTF-8: normalizacao interna de acentos latinos nos campos textuais.
% unipampa-alf.bst: derivado de abntex2-alf.bst (LPPL 1.3+).
% Modificacoes locais em 16/10/2026: italicos, paginas e trabalhos academicos.
% Esta variante nao e mantida pela equipe abnTeX2.
%% abntex2-alf.bst, v-1.9.7 laurocesar
%% Copyright 2012-2018 by abnTeX2 group at http://www.abntex.net.br/ 
%%


ENTRY
  { address advisor author
    booktitle booksubtitle
    chapter conference-number conference-year conference-location
    edition editor editortype
    dimensions doi furtherresp
    howpublished illustrated institution
    isbn issn journal key month note marginnote number organization
    org-short pages pagename
    publisher reprinted-from reprinted-text school
    series subtitle section title type url urlaccessdate
    volume year year-presented
    abnt-and-type
    abnt-doi abnt-dont-use-etal
    abnt-etal-cite abnt-etal-list abnt-etal-text abnt-emphasize abnt-experimental
    abnt-full-initials
    abnt-last-names abnt-ldots-type
    abnt-missing-year abnt-cite-style abnt-no-etal-label abnt-note
    abnt-repeated-author-omit abnt-repeated-title-omit
    abnt-show-options abnt-refinfo abnt-thesis-year abnt-url-package
    abnt-title-command
    abnt-verbatim-entry
    iso-abbreviation iso-author-punctuation iso-date-place
    }{}{ label extra.label year.label}

% UTF-8: normalizacao interna dos acentos latinos, incluindo portugues.
% O .bib continua em UTF-8; somente os campos textuais em memoria mudam.
% URLs, DOI, chaves de citacao e opcoes do estilo nao sao alterados.
STRINGS {unipampa.utf.input unipampa.utf.output unipampa.utf.char}
INTEGERS {unipampa.utf.length}
FUNCTION {unipampa.utf.normalize}
{ 'unipampa.utf.input :=
  "" 'unipampa.utf.output :=
  { unipampa.utf.input empty$ { #0 } { #1 } if$ }
  { #1 'unipampa.utf.length :=
    unipampa.utf.input #1 #1 substring$ 'unipampa.utf.char :=
    unipampa.utf.input #1 #3 substring$ "À" =
      { "{\`A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Á" =
      { "{\'A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Â" =
      { "{\^A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ã" =
      { "{\~A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ä" =
      { "{\" #34 int.to.chr$ * "A}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Å" =
      { "{\r A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ç" =
      { "{\c C}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "È" =
      { "{\`E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "É" =
      { "{\'E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ê" =
      { "{\^E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ë" =
      { "{\" #34 int.to.chr$ * "E}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ì" =
      { "{\`I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Í" =
      { "{\'I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Î" =
      { "{\^I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ï" =
      { "{\" #34 int.to.chr$ * "I}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ñ" =
      { "{\~N}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ò" =
      { "{\`O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ó" =
      { "{\'O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ô" =
      { "{\^O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Õ" =
      { "{\~O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ö" =
      { "{\" #34 int.to.chr$ * "O}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ù" =
      { "{\`U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ú" =
      { "{\'U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Û" =
      { "{\^U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ü" =
      { "{\" #34 int.to.chr$ * "U}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ý" =
      { "{\'Y}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "à" =
      { "{\`a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "á" =
      { "{\'a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "â" =
      { "{\^a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ã" =
      { "{\~a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ä" =
      { "{\" #34 int.to.chr$ * "a}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "å" =
      { "{\r a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ç" =
      { "{\c c}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "è" =
      { "{\`e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "é" =
      { "{\'e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ê" =
      { "{\^e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ë" =
      { "{\" #34 int.to.chr$ * "e}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ì" =
      { "{\`i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "í" =
      { "{\'i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "î" =
      { "{\^i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ï" =
      { "{\" #34 int.to.chr$ * "i}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ñ" =
      { "{\~n}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ò" =
      { "{\`o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ó" =
      { "{\'o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ô" =
      { "{\^o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "õ" =
      { "{\~o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ö" =
      { "{\" #34 int.to.chr$ * "o}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ù" =
      { "{\`u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ú" =
      { "{\'u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "û" =
      { "{\^u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ü" =
      { "{\" #34 int.to.chr$ * "u}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ý" =
      { "{\'y}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ÿ" =
      { "{\" #34 int.to.chr$ * "y}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ā" =
      { "{\=A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ā" =
      { "{\=a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ă" =
      { "{\u A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ă" =
      { "{\u a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ą" =
      { "{\k A}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ą" =
      { "{\k a}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ć" =
      { "{\'C}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ć" =
      { "{\'c}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĉ" =
      { "{\^C}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĉ" =
      { "{\^c}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ċ" =
      { "{\.C}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ċ" =
      { "{\.c}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Č" =
      { "{\v C}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "č" =
      { "{\v c}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ď" =
      { "{\v D}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ď" =
      { "{\v d}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ē" =
      { "{\=E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ē" =
      { "{\=e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĕ" =
      { "{\u E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĕ" =
      { "{\u e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ė" =
      { "{\.E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ė" =
      { "{\.e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ę" =
      { "{\k E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ę" =
      { "{\k e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ě" =
      { "{\v E}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ě" =
      { "{\v e}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĝ" =
      { "{\^G}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĝ" =
      { "{\^g}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ğ" =
      { "{\u G}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ğ" =
      { "{\u g}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ġ" =
      { "{\.G}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ġ" =
      { "{\.g}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ģ" =
      { "{\c G}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ģ" =
      { "{\c g}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĥ" =
      { "{\^H}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĥ" =
      { "{\^h}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĩ" =
      { "{\~I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĩ" =
      { "{\~i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ī" =
      { "{\=I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ī" =
      { "{\=i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĭ" =
      { "{\u I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĭ" =
      { "{\u i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Į" =
      { "{\k I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "į" =
      { "{\k i}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "İ" =
      { "{\.I}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĵ" =
      { "{\^J}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĵ" =
      { "{\^j}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ķ" =
      { "{\c K}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ķ" =
      { "{\c k}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ĺ" =
      { "{\'L}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ĺ" =
      { "{\'l}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ļ" =
      { "{\c L}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ļ" =
      { "{\c l}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ľ" =
      { "{\v L}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ľ" =
      { "{\v l}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ń" =
      { "{\'N}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ń" =
      { "{\'n}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ņ" =
      { "{\c N}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ņ" =
      { "{\c n}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ň" =
      { "{\v N}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ň" =
      { "{\v n}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ō" =
      { "{\=O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ō" =
      { "{\=o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŏ" =
      { "{\u O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŏ" =
      { "{\u o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ő" =
      { "{\H O}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ő" =
      { "{\H o}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŕ" =
      { "{\'R}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŕ" =
      { "{\'r}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŗ" =
      { "{\c R}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŗ" =
      { "{\c r}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ř" =
      { "{\v R}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ř" =
      { "{\v r}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ś" =
      { "{\'S}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ś" =
      { "{\'s}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŝ" =
      { "{\^S}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŝ" =
      { "{\^s}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ş" =
      { "{\c S}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ş" =
      { "{\c s}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Š" =
      { "{\v S}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "š" =
      { "{\v s}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ţ" =
      { "{\c T}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ţ" =
      { "{\c t}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ť" =
      { "{\v T}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ť" =
      { "{\v t}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ũ" =
      { "{\~U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ũ" =
      { "{\~u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ū" =
      { "{\=U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ū" =
      { "{\=u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŭ" =
      { "{\u U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŭ" =
      { "{\u u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ů" =
      { "{\r U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ů" =
      { "{\r u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ű" =
      { "{\H U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ű" =
      { "{\H u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ų" =
      { "{\k U}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ų" =
      { "{\k u}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŵ" =
      { "{\^W}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŵ" =
      { "{\^w}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ŷ" =
      { "{\^Y}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ŷ" =
      { "{\^y}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ÿ" =
      { "{\" #34 int.to.chr$ * "Y}" * 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ź" =
      { "{\'Z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ź" =
      { "{\'z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ż" =
      { "{\.Z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ż" =
      { "{\.z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "Ž" =
      { "{\v Z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #3 substring$ "ž" =
      { "{\v z}" 'unipampa.utf.char := #3 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "À" =
      { "{\`A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Á" =
      { "{\'A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Â" =
      { "{\^A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ã" =
      { "{\~A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ä" =
      { "{\" #34 int.to.chr$ * "A}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Å" =
      { "{\r A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ç" =
      { "{\c C}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "È" =
      { "{\`E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "É" =
      { "{\'E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ê" =
      { "{\^E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ë" =
      { "{\" #34 int.to.chr$ * "E}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ì" =
      { "{\`I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Í" =
      { "{\'I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Î" =
      { "{\^I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ï" =
      { "{\" #34 int.to.chr$ * "I}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ñ" =
      { "{\~N}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ò" =
      { "{\`O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ó" =
      { "{\'O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ô" =
      { "{\^O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Õ" =
      { "{\~O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ö" =
      { "{\" #34 int.to.chr$ * "O}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ù" =
      { "{\`U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ú" =
      { "{\'U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Û" =
      { "{\^U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ü" =
      { "{\" #34 int.to.chr$ * "U}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ý" =
      { "{\'Y}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "à" =
      { "{\`a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "á" =
      { "{\'a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "â" =
      { "{\^a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ã" =
      { "{\~a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ä" =
      { "{\" #34 int.to.chr$ * "a}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "å" =
      { "{\r a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ç" =
      { "{\c c}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "è" =
      { "{\`e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "é" =
      { "{\'e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ê" =
      { "{\^e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ë" =
      { "{\" #34 int.to.chr$ * "e}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ì" =
      { "{\`i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "í" =
      { "{\'i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "î" =
      { "{\^i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ï" =
      { "{\" #34 int.to.chr$ * "i}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ñ" =
      { "{\~n}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ò" =
      { "{\`o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ó" =
      { "{\'o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ô" =
      { "{\^o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "õ" =
      { "{\~o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ö" =
      { "{\" #34 int.to.chr$ * "o}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ù" =
      { "{\`u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ú" =
      { "{\'u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "û" =
      { "{\^u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ü" =
      { "{\" #34 int.to.chr$ * "u}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ý" =
      { "{\'y}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ÿ" =
      { "{\" #34 int.to.chr$ * "y}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ā" =
      { "{\=A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ā" =
      { "{\=a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ă" =
      { "{\u A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ă" =
      { "{\u a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ą" =
      { "{\k A}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ą" =
      { "{\k a}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ć" =
      { "{\'C}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ć" =
      { "{\'c}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĉ" =
      { "{\^C}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĉ" =
      { "{\^c}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ċ" =
      { "{\.C}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ċ" =
      { "{\.c}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Č" =
      { "{\v C}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "č" =
      { "{\v c}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ď" =
      { "{\v D}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ď" =
      { "{\v d}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ē" =
      { "{\=E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ē" =
      { "{\=e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĕ" =
      { "{\u E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĕ" =
      { "{\u e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ė" =
      { "{\.E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ė" =
      { "{\.e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ę" =
      { "{\k E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ę" =
      { "{\k e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ě" =
      { "{\v E}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ě" =
      { "{\v e}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĝ" =
      { "{\^G}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĝ" =
      { "{\^g}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ğ" =
      { "{\u G}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ğ" =
      { "{\u g}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ġ" =
      { "{\.G}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ġ" =
      { "{\.g}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ģ" =
      { "{\c G}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ģ" =
      { "{\c g}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĥ" =
      { "{\^H}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĥ" =
      { "{\^h}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĩ" =
      { "{\~I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĩ" =
      { "{\~i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ī" =
      { "{\=I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ī" =
      { "{\=i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĭ" =
      { "{\u I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĭ" =
      { "{\u i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Į" =
      { "{\k I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "į" =
      { "{\k i}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "İ" =
      { "{\.I}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĵ" =
      { "{\^J}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĵ" =
      { "{\^j}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ķ" =
      { "{\c K}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ķ" =
      { "{\c k}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ĺ" =
      { "{\'L}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ĺ" =
      { "{\'l}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ļ" =
      { "{\c L}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ļ" =
      { "{\c l}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ľ" =
      { "{\v L}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ľ" =
      { "{\v l}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ń" =
      { "{\'N}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ń" =
      { "{\'n}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ņ" =
      { "{\c N}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ņ" =
      { "{\c n}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ň" =
      { "{\v N}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ň" =
      { "{\v n}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ō" =
      { "{\=O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ō" =
      { "{\=o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŏ" =
      { "{\u O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŏ" =
      { "{\u o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ő" =
      { "{\H O}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ő" =
      { "{\H o}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŕ" =
      { "{\'R}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŕ" =
      { "{\'r}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŗ" =
      { "{\c R}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŗ" =
      { "{\c r}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ř" =
      { "{\v R}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ř" =
      { "{\v r}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ś" =
      { "{\'S}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ś" =
      { "{\'s}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŝ" =
      { "{\^S}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŝ" =
      { "{\^s}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ş" =
      { "{\c S}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ş" =
      { "{\c s}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Š" =
      { "{\v S}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "š" =
      { "{\v s}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ţ" =
      { "{\c T}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ţ" =
      { "{\c t}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ť" =
      { "{\v T}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ť" =
      { "{\v t}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ũ" =
      { "{\~U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ũ" =
      { "{\~u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ū" =
      { "{\=U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ū" =
      { "{\=u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŭ" =
      { "{\u U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŭ" =
      { "{\u u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ů" =
      { "{\r U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ů" =
      { "{\r u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ű" =
      { "{\H U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ű" =
      { "{\H u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ų" =
      { "{\k U}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ų" =
      { "{\k u}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŵ" =
      { "{\^W}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŵ" =
      { "{\^w}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ŷ" =
      { "{\^Y}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ŷ" =
      { "{\^y}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ÿ" =
      { "{\" #34 int.to.chr$ * "Y}" * 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ź" =
      { "{\'Z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ź" =
      { "{\'z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ż" =
      { "{\.Z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ż" =
      { "{\.z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "Ž" =
      { "{\v Z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.input #1 #2 substring$ "ž" =
      { "{\v z}" 'unipampa.utf.char := #2 'unipampa.utf.length := } 'skip$ if$
    unipampa.utf.output unipampa.utf.char * 'unipampa.utf.output :=
    unipampa.utf.input unipampa.utf.length #1 + global.max$ substring$
      'unipampa.utf.input :=
  } while$
  unipampa.utf.output
}
FUNCTION {unipampa.field.address}
{ address missing$ { address } { address unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.advisor}
{ advisor missing$ { advisor } { advisor unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.author}
{ author missing$ { author } { author unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.booktitle}
{ booktitle missing$ { booktitle } { booktitle unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.booksubtitle}
{ booksubtitle missing$ { booksubtitle } { booksubtitle unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.chapter}
{ chapter missing$ { chapter } { chapter unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.conference-number}
{ conference-number missing$ { conference-number } { conference-number unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.conference-year}
{ conference-year missing$ { conference-year } { conference-year unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.conference-location}
{ conference-location missing$ { conference-location } { conference-location unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.edition}
{ edition missing$ { edition } { edition unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.editor}
{ editor missing$ { editor } { editor unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.editortype}
{ editortype missing$ { editortype } { editortype unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.dimensions}
{ dimensions missing$ { dimensions } { dimensions unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.furtherresp}
{ furtherresp missing$ { furtherresp } { furtherresp unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.howpublished}
{ howpublished missing$ { howpublished } { howpublished unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.illustrated}
{ illustrated missing$ { illustrated } { illustrated unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.institution}
{ institution missing$ { institution } { institution unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.journal}
{ journal missing$ { journal } { journal unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.month}
{ month missing$ { month } { month unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.note}
{ note missing$ { note } { note unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.marginnote}
{ marginnote missing$ { marginnote } { marginnote unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.number}
{ number missing$ { number } { number unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.organization}
{ organization missing$ { organization } { organization unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.org-short}
{ org-short missing$ { org-short } { org-short unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.pages}
{ pages missing$ { pages } { pages unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.pagename}
{ pagename missing$ { pagename } { pagename unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.publisher}
{ publisher missing$ { publisher } { publisher unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.reprinted-text}
{ reprinted-text missing$ { reprinted-text } { reprinted-text unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.school}
{ school missing$ { school } { school unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.series}
{ series missing$ { series } { series unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.subtitle}
{ subtitle missing$ { subtitle } { subtitle unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.section}
{ section missing$ { section } { section unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.title}
{ title missing$ { title } { title unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.type}
{ type missing$ { type } { type unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.urlaccessdate}
{ urlaccessdate missing$ { urlaccessdate } { urlaccessdate unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.volume}
{ volume missing$ { volume } { volume unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.year}
{ year missing$ { year } { year unipampa.utf.normalize } if$ }
FUNCTION {unipampa.field.year-presented}
{ year-presented missing$ { year-presented } { year-presented unipampa.utf.normalize } if$ }


STRINGS { abnt.bst.revision }


STRINGS { r s t }


STRINGS {abnt.etal.text abnt.emphasize previous.author previous.title}
INTEGERS {abnt.alf  abnt.cite.style abnt.doi
          abnt.experimental abnt.etal.cite abnt.etal.list
          abnt.full.initials
          abnt.last.names abnt.ldots.type
          abnt.missing.year
          abnt.refinfo  abnt.repeated.author.omit abnt.repeated.title.omit
	  abnt.show.options abnt.and.type
          abnt.title.command
	  abnt.thesis.year
	  abnt.url.package abnt.verbatim.entry
	  iso.abbreviation iso.author.punctuation iso.date.place
	  repeated.author}


INTEGERS { title.lenght title.pos first.word no.bracket}
STRINGS { title.char}


INTEGERS {output.state before.all mid.sentence after.sentence after.block }


INTEGERS {url.type}

FUNCTION {abnt.doi.expand.to.url} {#0} %expands a doi address to its url correspondent
FUNCTION {abnt.doi.link}          {#1} %links doi to its url correspondent
FUNCTION {abnt.doi.leave.as.is}   {#2} %shows doi as is, external viewer will have
                                       %to know what to do with a "doi:" document

%values for url types
FUNCTION {unknown.url} {#0}
FUNCTION {http.url}    {#1}
FUNCTION {file.url}    {#2}
FUNCTION {ftp.url}     {#3}
FUNCTION {doi.url}     {#4}
FUNCTION {mailto.url}  {#5}

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}



FUNCTION {output.nonnull}
{ 's :=                                     %the argument is written into s
  output.state mid.sentence =
    { ", " * write$ }                       %mid.sentence first write comma
    { output.state after.block =
        { add.period$ write$ newline$ }
        { output.state before.all = 'write$
            { add.period$ " " * write$ }
          if$}
      if$
      mid.sentence 'output.state := }
  if$
  s                                         %now comes s
}
FUNCTION {output.nonnull.dash}
{ 's :=                                   %the argument is written into s
  output.state mid.sentence =
    { " -- " * write$ }                       %mid.sentence first write comma
    { output.state after.block =
        { add.period$ write$ newline$ write$}
        { output.state before.all = 'write$
            { add.period$ " " * write$ }
          if$}
      if$
      mid.sentence 'output.state := }
  if$
  s                                         %now comes s
}
FUNCTION {output}     %does nothing or calls output.nonull
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}
FUNCTION {output.dash}     %does nothing or calls output.nonull
{ duplicate$ empty$
    'pop$
    'output.nonnull.dash
  if$
}
FUNCTION {output.check}  %like ouput, but complains if t empty
{ 't :=
  duplicate$ empty$
    { pop$ "campo " t * " vazio em " * cite$ * warning$ }
    'output.nonnull
  if$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}
FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
        'skip$
        { after.sentence 'output.state := }
      if$
    }
  if$
}
FUNCTION {add.blank} {  " " * before.all 'output.state :=}

FUNCTION {date.block} {new.block}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}
FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}
FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}
FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}
FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}
FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}
FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}
FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}
FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { abnt.emphasize "{"  *  swap$ * "}" * }
  if$
}


FUNCTION {tie.or.space.prefix} %if text length less than 3 chars. uses a tie
{ duplicate$ text.length$ #5 <
    { "~" }
    { " " }
  if$
  swap$
}

FUNCTION {no.space} { { "" } swap$ }


FUNCTION {space.word} { " " swap$ * " " * }

FUNCTION {bbl.and}
{ abnt.and.type #0 = {" e "} 'skip$ if$
  abnt.and.type #1 = {" \& "} 'skip$ if$}
FUNCTION {bbl.chapter} { "cap." }
FUNCTION {bbl.colon} {": "}
FUNCTION {bbl.editors} { "Ed." }
FUNCTION {bbl.editor} { "Ed." }
FUNCTION {bbl.edby} { "editado por" }
FUNCTION {bbl.edition} { "ed." }
FUNCTION {bbl.empty} {""}
FUNCTION {bbl.etal}{abnt.etal.text "" = {""} {" " abnt.etal.text *} if$}
FUNCTION {bbl.doi.url} {"http://dx.doi.org/"}
FUNCTION {bbl.in}{ "\textit{In}" iso.abbreviation 'skip$ { bbl.colon *} if$}
FUNCTION {bbl.ldots} %#0 use nothing, #1 use \ldots, #2 use $\ldots$, 3# use {...}
{abnt.ldots.type
  {abnt.ldots.type #1 = {"\ldots"}   'skip$ if$
   abnt.ldots.type #2 = {"$\ldots$"} 'skip$ if$
   abnt.ldots.type #3 = {"{...}"}    'skip$ if$}
  {""} %for #0 use nothing
if$}
FUNCTION {bbl.master}  { "Mestrado" }
FUNCTION {bbl.missing.year}
{abnt.missing.year
  {"[s.d.]"} %#1
  {""}       %#0
 if$}
FUNCTION {bbl.monography} { "Monografia" }
FUNCTION {bbl.mthesis} { "Disserta\c{c}\~{a}o" }
FUNCTION {bbl.no.address} {"\textit{[S. l.]}"}
FUNCTION {bbl.no.address.no.publisher} {"\textit{[S. l.: s. n.]}"}
FUNCTION {bbl.no.publisher} {"\textit{[s.n.]}"}
FUNCTION {bbl.number} { iso.abbreviation {"no."} {"n."} if$ }
FUNCTION {bbl.nr} { "n." }
FUNCTION {bbl.of} { "de" }
FUNCTION {bbl.phd} { "Doutorado" }
FUNCTION {bbl.phdthesis} { "Tese" }
FUNCTION {bbl.pages}
  {unipampa.field.pagename empty$
    { "p." }
    {unipampa.field.pagename}
   if$
   }
FUNCTION {bbl.page} { bbl.pages }
FUNCTION {bbl.reprint} {"Separata de"}
FUNCTION {bbl.semicolon} { "; "}
FUNCTION {bbl.same.field} {"\underline{\ \ \ \ \ \ \ \ }"}
FUNCTION {bbl.techrep} { "Rel. Tec." }
FUNCTION {bbl.url.accessdate}
  {iso.abbreviation { "Cited "} {"Acesso em: "} if$}
FUNCTION {bbl.url.available}
{ iso.abbreviation {"Available from Internet: "} {"Dispon{\'\i}vel em: "} if$}
FUNCTION {bbl.void} {""}
FUNCTION {bbl.volume} { iso.abbreviation {"vol."} {"v."} if$ }


MACRO {jan} {"jan."}
MACRO {feb} {"fev."}
MACRO {mar} {"mar."}
MACRO {apr} {"abr."}
MACRO {may} {"maio"}
MACRO {jun} {"jun."}
MACRO {jul} {"jul."}
MACRO {aug} {"ago."}
MACRO {sep} {"set."}
MACRO {oct} {"out."}
MACRO {nov} {"nov."}
MACRO {dec} {"dez."}


FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}
FUNCTION {str.to.int}
{ duplicate$ is.num
    {chr.to.int$ #48 -}
    'skip$
  if$
}
FUNCTION {bibinfo.check} %usage: field "field" bibinfo.check
{ swap$ duplicate$ missing$
    {pop$ pop$ ""}
    { duplicate$ empty$
        {swap$ pop$}
        {swap$ pop$}
      if$
    }
  if$
}
FUNCTION {bibinfo.warn}
{ swap$
  duplicate$ missing$
    {swap$ "faltando " swap$ * " em " * cite$ * warning$ pop$ ""}
    { duplicate$ empty$
        {swap$ "vazio " swap$ * " em " * cite$ * warning$}
        {swap$ pop$}
      if$
    }
  if$
}

FUNCTION {write.field.verbatim}
{
duplicate$ missing$
  {pop$ pop$} 
  {
  s text.length$ #0 >
    {s "," * newline$ write$ "" 's :=}
    'skip$
  if$
  swap$
  "={" * swap$ * "}" *
  s swap$ * 's :=
  }
if$
}

FUNCTION {write.entry.verbatim1}
{
   "address" 		unipampa.field.address  		write.field.verbatim
   "author" 		unipampa.field.author   		write.field.verbatim
   "booktitle" 		unipampa.field.booktitle 		write.field.verbatim
   "booksubtitle" 	unipampa.field.booksubtitle 		write.field.verbatim
   "chapter" 		unipampa.field.chapter 		write.field.verbatim
   "conference-number" 	unipampa.field.conference-number 	write.field.verbatim
   "conference-year" 	unipampa.field.conference-year 	write.field.verbatim
   "conference-location" unipampa.field.conference-location 	write.field.verbatim
   "edition" 		unipampa.field.edition 		write.field.verbatim
   "editor" 		unipampa.field.editor 			write.field.verbatim
   "editortype" 	unipampa.field.editortype 		write.field.verbatim
   "dimensions" 	unipampa.field.dimensions 		write.field.verbatim
   "furtherresp" 	unipampa.field.furtherresp 		write.field.verbatim
   "howpublished" 	unipampa.field.howpublished 		write.field.verbatim
   "illustrated" 	unipampa.field.illustrated  		write.field.verbatim
   "institution" 	unipampa.field.institution 		write.field.verbatim
   "isbn" 		isbn 			write.field.verbatim
   "issn" 		issn 			write.field.verbatim
   "journal" 		unipampa.field.journal 		write.field.verbatim
}
FUNCTION {write.entry.verbatim2}
{
   "key" 		key 			write.field.verbatim
   "month" 		unipampa.field.month 			write.field.verbatim
   "note" 		unipampa.field.note 			write.field.verbatim
   "marginnote" 	unipampa.field.marginnote 		write.field.verbatim
   "number" 		unipampa.field.number 			write.field.verbatim
   "organization" 	unipampa.field.organization 		write.field.verbatim
   "org-short" 		unipampa.field.org-short 		write.field.verbatim
   "pages" 		unipampa.field.pages 			write.field.verbatim
   "pagename" 		unipampa.field.pagename 		write.field.verbatim
   "publisher" 		unipampa.field.publisher 		write.field.verbatim
   "reprinted-from" 	reprinted-from 		write.field.verbatim
   "reprinted-text" 	unipampa.field.reprinted-text 		write.field.verbatim
   "school" 		unipampa.field.school 			write.field.verbatim
   "series" 		unipampa.field.series 			write.field.verbatim
   "subtitle" 		unipampa.field.subtitle 		write.field.verbatim
   "section" 		unipampa.field.section 		write.field.verbatim
   "title" 		unipampa.field.title 			write.field.verbatim
   "type" 		unipampa.field.type 			write.field.verbatim
}
FUNCTION {write.entry.verbatim3}
{
   "url" 		url 			write.field.verbatim
   "urlaccessdate" 	unipampa.field.urlaccessdate 		write.field.verbatim
   "volume" 		unipampa.field.volume 			write.field.verbatim
   "year" 		unipampa.field.year 			write.field.verbatim
   "abnt-emphasize" 	abnt-emphasize 		write.field.verbatim
   "abnt-experimental" 	abnt-experimental 	write.field.verbatim
   "abnt-doi" 		abnt-doi	 	write.field.verbatim
   "abnt-dont-use-etal" abnt-dont-use-etal 	write.field.verbatim
   "abnt-full-initials" abnt-full-initials 	write.field.verbatim
   "abnt-ldots-type" 	abnt-ldots-type 	write.field.verbatim
   "abnt-missing-year" 	abnt-missing-year 	write.field.verbatim
   "abnt-cite-style" 	abnt-cite-style 		write.field.verbatim
   "abnt-no-etal-label" abnt-no-etal-label 	write.field.verbatim
   %abnt-note
   "abnt-repeated-author-omit" abnt-repeated-author-omit write.field.verbatim
   "abnt-repeated-title-omit" abnt-repeated-title-omit write.field.verbatim
   "abnt-show-options" 	abnt-show-options 	write.field.verbatim
   "abnt-refinfo" 	abnt-refinfo 		write.field.verbatim
   "abnt-thesis-year" 	abnt-thesis-year 	write.field.verbatim
   "abnt-title-command" abnt-title-command 	write.field.verbatim
   "abnt-url-package" 	abnt-url-package 	write.field.verbatim
   "abnt-verbatim-entry" abnt-verbatim-entry 	write.field.verbatim
}

FUNCTION {write.entry.verbatim}
{"" 's := "" 't :=
  abnt.verbatim.entry
  {"{\footnotesize\begin{verbatim}" newline$ write$
   "@" type$ * "{" * cite$ * 's :=
   write.entry.verbatim1
   write.entry.verbatim2
   write.entry.verbatim3
   s "" = {"}"} {s "}" *} if$
   newline$ write$
   "\end{verbatim}}" newline$ write$}
  {newline$}
if$}

STRINGS  { bibinfo}
INTEGERS { nameptr namesleft numnames }

FUNCTION {get.person} {"{vv }{ll}{, jj}{, ff}" format.name$}
FUNCTION {get.last.name} {#1 "{ll}" format.name$}
FUNCTION {get.first.name} {#1 "{ff}" format.name$}
FUNCTION {get.von} {#1 "{vv}" format.name$}
FUNCTION {get.jr} {#1 "{jj}" format.name$}
FUNCTION {is.composed.von}
  {get.person
   get.von duplicate$ empty$ {pop$ #0}
     {duplicate$
      get.first.name empty$ not
      swap$ get.last.name empty$ not and
      } if$
   }

FUNCTION {recompose.name}
  {get.person duplicate$ duplicate$ duplicate$
   get.von #1 "{ll }" format.name$ swap$
   get.last.name *
   swap$ #1 "{, ff}" format.name$ *
   swap$ get.von #1 "{ ff}" format.name$ *
   }


FUNCTION {format.single.name}
{
s nameptr get.person 'r :=
abnt.last.names
  {r #1 "{ll}{ jj}" format.name$ "u" change.case$
   abnt.full.initials
    {r #1 "{, ff}{ vv}" format.name$ *}
    {r #1 "{, f.}{ vv}" format.name$ *}
  if$}
  {%r #1 is.composed.von {r #1 recompose.name 'r :=} 'skip$ if$
   r #1 "{ll}" format.name$
   #1 "{ll}" format.name$
   r #1 "{ jj}" format.name$ * "u" change.case$
   abnt.full.initials
    {r #1 "{, ff}{ vv}" format.name$ *
     r #1 "{ll}" format.name$
     #1 "{ ff}{ vv}" format.name$ *}
    {iso.author.punctuation
      {r #1 "{, f{}}{ vv}" format.name$ *}
      {r #1 "{, f.}{ vv}" format.name$ *} if$
     r #1 "{ll}" format.name$
     #1 "{ f.}{ vv}" format.name$ *}
  if$}

if$
}
FUNCTION {format.names}
{ 'bibinfo :=  duplicate$ empty$ 'skip$
  {'s :=
   "" 't :=
   #1 'nameptr :=  s num.names$ 'numnames :=
    numnames 'namesleft :=
    { namesleft #0 > }
    { format.single.name
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        {nameptr #1 #1 + = numnames abnt.etal.list > and
            {abnt.etal.list {"others" 't := #1 'namesleft :=} 'skip$ if$ }
            'skip$
          if$
          namesleft #1 >
            { "; " * t * }
            { numnames #2 >
                { "" * }
                'skip$
              if$
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                { bbl.etal *}
                { "; " * t *}
              if$ }
          if$ }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft := }
  while$
  } if$
}

%from plain.bst
FUNCTION {format.names.plain}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{ff }{vv }{ll}{ jj}" format.name$ 't :=
      nameptr #1 >
	{ namesleft #1 >
	    { ", " * t * }
	    { numnames #20 >
		{ "," * }
		'skip$
	      if$
	      t "others" =
		{ bbl.etal * }
		{ bbl.and * t * }
	      if$
	    }
	  if$
	}
	't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}
FUNCTION {format.names.ed} {format.names}

FUNCTION {format.authors}
{
unipampa.field.author "author" format.names
}

FUNCTION {format.authors.plain}
{
unipampa.field.author format.names.plain
}

FUNCTION {get.bbl.editor} { unipampa.field.editor num.names$ #1 > 'bbl.editors 'bbl.editor if$ }


FUNCTION {format.book.pages}
{ unipampa.field.pages "pages" bibinfo.check  duplicate$ empty$
    'skip$
    {  "~" * bbl.pages * }
  if$
}
FUNCTION {format.dimensions}
{ unipampa.field.dimensions empty$
    'skip$
    { unipampa.field.dimensions output}
  if$
}
FUNCTION {format.furtherresp}
{ unipampa.field.furtherresp empty$
    'skip$
    { unipampa.field.furtherresp output}
  if$
}
FUNCTION {format.illustrated}
{ unipampa.field.illustrated missing$
    'skip$
    {unipampa.field.illustrated empty$
      {"il." output}
      {unipampa.field.illustrated output}
     if$}
  if$
}
FUNCTION {format.isbn}
{ isbn "isbn" bibinfo.check duplicate$ empty$ 
    'skip$
    {new.block "ISBN " swap$ *}
  if$
}

FUNCTION {format.issn}
{ issn "issn" bibinfo.check
  duplicate$ empty$ 'skip$
    {new.block "ISSN " swap$ *}
  if$
}

FUNCTION {format.note}
{ unipampa.field.note empty$
    { "" }
    { unipampa.field.note #1 #1 substring$
      duplicate$ "{" =
        'skip$
        { output.state mid.sentence =
          { "l" }
          { "u" }
        if$
        change.case$ }
      if$
      unipampa.field.note #2 global.max$ substring$ * "note" bibinfo.check }
  if$
}

FUNCTION {format.howpublished}
{ unipampa.field.howpublished empty$
    { "" }
    { unipampa.field.howpublished #1 #1 substring$
      duplicate$ "{" =
        'skip$
        { output.state mid.sentence =
          { "l" }
          { "u" }
        if$
        change.case$ }
      if$
      unipampa.field.howpublished #2 global.max$ substring$ * "howpublished" bibinfo.check }
  if$
}



FUNCTION {format.title.as.author}
{ 's := %holds the title
  #1 'title.pos := %our position in the title
  #1 'first.word := %boolean, true if we already have the first word
  #1 'no.bracket := %boolean, false if we are inside a {}
  "" 't := %holds the first title.pos characters of the title
  {first.word}
    {s title.pos #1 substring$ 'title.char :=
      %checks if the character is a {
      title.char "{" = {#0 'no.bracket :=} 'skip$ if$
      %if we are in a bracket
      no.bracket 'skip$ {title.char "}" = {#1 'no.bracket :=} 'skip$ if$}  if$
      type$ "journalpart" =
        {title.char "." = title.char ":" = or title.char "!" = or
	 title.char "," = or title.char ";" = or title.char "?" = or}
	{title.char " " =}
      if$ s t = or no.bracket and
       {#0 'first.word :=
       t title.char * "u" change.case$
       title.pos #1 + 'title.pos :=
       s title.pos global.max$ substring$ * 's :=}
       {title.pos #1 + 'title.pos := t title.char * 't :=}
     if$
     }
  while$
s
}


%compares current title with the title of the previous entry
FUNCTION {compare.title}
{abnt.repeated.title.omit
  {duplicate$ "" = 'skip$
    {duplicate$ previous.title = repeated.author and
      {duplicate$ 'previous.title := pop$ bbl.same.field}
      {duplicate$ 'previous.title :=}
     if$}
   if$}
 'skip$
 if$
}

FUNCTION {apply.title.command}
{abnt.title.command
  {duplicate$ empty$ 'skip$
    {"\bibtextitlecommand{" type$ * "}{" * swap$ * "}" *}
    if$}
  'skip$ if$
}

FUNCTION {format.title}
{unipampa.field.author empty$ unipampa.field.editor empty$ and unipampa.field.organization empty$ and
  {unipampa.field.title format.title.as.author}
  {unipampa.field.title  duplicate$ empty$ {pop$ ""} {"t" change.case$} if$}
 if$
 unipampa.field.subtitle  empty$ 'skip$ {unipampa.field.subtitle ": " swap$ * "t" change.case$ *} if$
 apply.title.command
 compare.title
}

FUNCTION {n.dashify}
{ 't := ""
  { t empty$ not }
  { t #1 #1 substring$ "-" =
    { "-" *
      { t #1 #1 substring$ "-" = }
      { t #2 global.max$ substring$ 't := } while$
    }
    { t #1 #1 substring$ * t #2 global.max$ substring$ 't := } if$
  } while$
}

FUNCTION {word.in} { bbl.in " " * }

FUNCTION {format.month}
{ unipampa.field.month empty$ 'skip$
  {unipampa.field.month "month" bibinfo.check}
  if$
}

FUNCTION {format.date}
{ unipampa.field.year empty$
    { unipampa.field.month empty$
	{ bbl.missing.year }
	{ "existe o campo month (mês) mas não o campo year (ano) em " cite$ * warning$ unipampa.field.month}
      if$}
    { unipampa.field.month empty$
	{ unipampa.field.year n.dashify}
	{ unipampa.field.month " " * unipampa.field.year * }
      if$}
  if$
}
FUNCTION {format.btitle}
{unipampa.field.author empty$ unipampa.field.editor empty$ and unipampa.field.organization empty$ and
    {unipampa.field.title format.title.as.author "title" bibinfo.check duplicate$ empty$ 'skip$ {} if$
    unipampa.field.subtitle  empty$ 'skip$ {unipampa.field.subtitle ": " swap$ * "t" change.case$ *} if$}
    {unipampa.field.title "title" bibinfo.check emphasize duplicate$ empty$ 'skip$ {} if$
    unipampa.field.subtitle  empty$ 'skip$ {unipampa.field.subtitle ": " swap$ * "t" change.case$ *} if$}
if$
apply.title.command
compare.title
}
FUNCTION {either.or.check}
{ empty$
    'pop$
    { "não posso usar ambos " swap$ * " os campos em " * cite$ * warning$ }
  if$
}

FUNCTION {format.volume} %leaves formatted or empty volume on the stack
{unipampa.field.volume duplicate$ empty$
   'skip$
   {unipampa.field.volume #1 #1 substring$ is.num
      {bbl.volume swap$ tie.or.space.prefix * *}
      'skip$
    if$}
 if$
}

FUNCTION {format.number} %leaves formatted or empty number on the stack
{ unipampa.field.number duplicate$ empty$
    'skip$
    {bbl.number swap$ tie.or.space.prefix * *}
  if$
}

FUNCTION {format.patent.number}
{ unipampa.field.number
}

FUNCTION {format.bvolume}
{ unipampa.field.volume empty$
    { "" }
    { format.volume
      unipampa.field.number empty$ 'skip$ {output format.number} if$
      unipampa.field.series "series" bibinfo.check
      duplicate$ empty$ 'pop$
        { swap$ bbl.of space.word * swap$
          emphasize * }
      if$
    }
  if$
}

FUNCTION {format.bvolume.if.no.series}
{ unipampa.field.series empty$
    { format.bvolume }
    { "" }
  if$
}


FUNCTION {format.number.or.volume}
{unipampa.field.number empty$
  {format.volume}
  {unipampa.field.number} %we use the pure number here without leading "n."
 if$
}

FUNCTION {format.volume.and.number}
{format.volume output
 format.number
}

FUNCTION {format.volume.number.series}
{ unipampa.field.number empty$ unipampa.field.volume empty$ and
  { unipampa.field.series empty$
    { "" }
    {" (" unipampa.field.series "series" bibinfo.check * ")" *}
    if$}
  { unipampa.field.series empty$
    {""} %{ format.number.or.volume }
    { " ("  unipampa.field.series "series" bibinfo.check * ", " *
     format.number.or.volume * ")" *  }
     if$ }
  if$
}

FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$ }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}
 
FUNCTION {format.edition}
{ unipampa.field.edition duplicate$ empty$ 'skip$
    {output.state mid.sentence = { "l" } { "t" } if$ change.case$
      "edition" bibinfo.check
    unipampa.field.edition #1 #1 substring$ is.num {". " * bbl.edition * } 'skip$ if$}
  if$
}
INTEGERS { multiresult }
FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$ }
  while$
  multiresult
}
FUNCTION {format.pages}
{ unipampa.field.pages duplicate$ empty$ 'skip$
    { duplicate$ multi.page.check
        { n.dashify bbl.pages swap$}
        { bbl.page swap$ }
      if$
      tie.or.space.prefix "pages" bibinfo.check * * }
  if$
}
FUNCTION {format.journal.pages}
{ unipampa.field.pages empty$ {""}
    { unipampa.field.pages n.dashify bbl.pages
          swap$ tie.or.space.prefix "pages" bibinfo.check * *}
  if$
}

FUNCTION {get.url.type}
{s #1 #5 substring$ "http:" = {http.url}
 {s #1 #6 substring$ "https:" = {http.url}
  {s #1 #5 substring$ "file:" = {file.url}
   {s #1 #4 substring$ "ftp:"  = {ftp.url}
    {s #1 #4 substring$ "doi:"  = {doi.url}
     {s #1 #7 substring$ "mailto:" = {mailto.url} {unknown.url} if$}
      if$}
     if$}
    if$}
   if$}
  if$
 'url.type :=
}

FUNCTION {expand.doi}
{s
url.type doi.url =
  {#5 global.max$ substring$ bbl.doi.url swap$ *}
  'skip$ if$
}

INTEGERS {url.pos url.length}
FUNCTION {filter.url.tex}
{s text.length$ #1 + 'url.length :=
 #1 'url.pos := "" 't :=
  {url.pos url.length <}
    {s url.pos #1 substring$
    duplicate$ "_" = {pop$ "\underline{\ }" } 'skip$ if$
    duplicate$ "%" = {pop$ "\%" } 'skip$ if$
    duplicate$ "&" = {pop$ "\&" } 'skip$ if$
    duplicate$ "~" = {pop$ "\~{}" } 'skip$ if$
    duplicate$ "/" = {pop$ "\-/" } 'skip$ if$
    duplicate$ "." = {pop$ "\-." } 'skip$ if$
    duplicate$ "\" = {pop$ "{\textbackslash}" } 'skip$ if$
    duplicate$ "#" = {pop$ "\#" } 'skip$ if$
    duplicate$ "_" = {pop$ "\_" } 'skip$ if$
    t swap$ * 't :=
    url.pos #1 + 'url.pos :=
    }
  while$
t
}
FUNCTION {filter.url.html}
{s text.length$ #1 + 'url.length :=
 #1 'url.pos := "" 't :=
  {url.pos url.length <}
    {s url.pos #1 substring$
    duplicate$ "%" = {pop$ "\%" } 'skip$ if$
    duplicate$ "#" = {pop$ "\#" } 'skip$ if$
    duplicate$ "_" = {pop$ "\_" } 'skip$ if$
    t swap$ * 't :=
    url.pos #1 + 'url.pos :=
    }
  while$
t
}

FUNCTION {compose.url}
{'s :=
 get.url.type
 bbl.url.available
 abnt.url.package #0 =
   { "$<$"   *
   abnt.doi abnt.doi.expand.to.url = 'expand.doi {s} if$
   * "$>$" *} 'skip$ if$
 abnt.url.package #1 =
   { "\url{" * filter.url.html * "}" *} 'skip$ if$
 abnt.url.package #2 =
   {url.type http.url =
     {"\htmladdnormallink{$<$" * filter.url.tex * "$>$}{" * filter.url.html * "}" *}
     'skip$ if$
    url.type doi.url = url.type ftp.url = or url.type mailto.url = or
     {"\htmladdnormallink{$<$" *
      abnt.doi abnt.doi.expand.to.url = 'expand.doi {s} if$
      * "$>$}{" *
      abnt.doi abnt.doi.leave.as.is = {s} 'expand.doi if$
      * "}" * }
     'skip$ if$
    url.type unknown.url =
     {"$<$" * filter.url.tex * "$>$" *}
     'skip$ if$} 'skip$ if$
}
FUNCTION {format.doi}
{ doi empty$
    'skip$
    { "DOI: \url{http://dx.doi.org/" doi * "}" *
      output new.sentence
    }
  if$
}

FUNCTION {format.url}
{ format.doi
  url empty$ 'skip$
    { url compose.url output new.sentence }
  if$
  unipampa.field.urlaccessdate duplicate$ empty$ 'skip$
    { bbl.url.accessdate swap$ * }
  if$
  "urlaccessdate" bibinfo.check output new.sentence
}

FUNCTION {format.conference.info}
{ unipampa.field.conference-number empty$
    'skip$
    {unipampa.field.conference-number "." * output}
  if$
  unipampa.field.conference-year empty$
    'skip$
    {unipampa.field.conference-year output}
  if$
  unipampa.field.conference-location empty$
    'skip$
    {unipampa.field.conference-location output}
  if$
  new.sentence
}


FUNCTION {format.chapter.pages}
{ unipampa.field.chapter empty$
    'format.pages
    { unipampa.field.type empty$
        { bbl.chapter }
        { unipampa.field.type "l" change.case$
          "type" bibinfo.check }
      if$
      unipampa.field.chapter tie.or.space.prefix "chapter" bibinfo.check * *
      unipampa.field.pages empty$
        'skip$
        { ", " * format.pages * }
      if$ }
  if$
}

FUNCTION {format.booktitle}
{unipampa.field.author empty$ unipampa.field.editor empty$ and unipampa.field.organization empty$ and
    {unipampa.field.booktitle format.title.as.author "booktitle" bibinfo.check duplicate$ empty$ 'skip$ {} if$
    unipampa.field.booksubtitle  empty$ 'skip$ {unipampa.field.booksubtitle ": " swap$ * "t" change.case$ *
    apply.title.command} if$}
    {unipampa.field.booktitle "booktitle" bibinfo.check emphasize duplicate$ empty$ 'skip$ {} if$
    unipampa.field.booksubtitle  empty$ 'skip$ {unipampa.field.booksubtitle ": " swap$ * "t" change.case$ *
    apply.title.command} if$}
if$
}
FUNCTION {format.editors}
{ unipampa.field.editor  empty$
   {"inbook" type$ = 'bbl.same.field 'skip$ if$}
   {unipampa.field.author empty$
    {unipampa.field.editor "editor" format.names " (" *
     unipampa.field.editortype empty$ {bbl.editor} {unipampa.field.editortype} if$
     ")" * * }
    {"inbook" type$ =
      {bbl.same.field }
      {unipampa.field.editor "editor" format.names " (" *
       unipampa.field.editortype empty$ {bbl.editor} {unipampa.field.editortype} if$
       ")" * *}
    if$}
   if$}
  if$
}
FUNCTION {format.in.ed.booktitle}
{ unipampa.field.editor empty$
    {unipampa.field.organization empty$ not unipampa.field.author empty$ not and    %if one of two not empty
      {word.in "\MakeUppercase{" unipampa.field.organization * "}" * * output
       format.conference.info
       unipampa.field.booktitle empty$ {""} {new.sentence format.booktitle} if$}
      {word.in
       unipampa.field.organization empty$ unipampa.field.author empty$ and 'skip$
         {"inbook" type$ = {bbl.same.field * output new.sentence ""}
         'skip$ if$  } if$
       unipampa.field.booktitle empty$ 'skip$ {format.booktitle *} if$}
     if$}
    {word.in format.editors * output
     unipampa.field.booktitle empty$ {""} {new.sentence format.booktitle} if$}
  if$
  output
  new.sentence
}
FUNCTION {empty.misc.check}
{ unipampa.field.author empty$ unipampa.field.title empty$ unipampa.field.howpublished empty$
  unipampa.field.month empty$ unipampa.field.year empty$ unipampa.field.note empty$
  and and and and and
  key empty$ not and
    { "todos os campos relevantes estão vazios ou faltando em " cite$ * warning$ }
    'skip$
  if$
}
FUNCTION {format.type}
{ unipampa.field.type "type" bibinfo.check
  duplicate$ empty$ 'skip$
    {new.block "" swap$ * }
  if$
}


FUNCTION {format.year}
{unipampa.field.year empty$
   { "campo year vazio ou faltando em " cite$ *
    abnt.missing.year {" (vou colocar [s.d.])" *} 'skip$ if$ warning$
    abnt.missing.year {", " } {""} if$ bbl.missing.year *}
    {unipampa.field.year n.dashify "year" bibinfo.check}
if$
}

FUNCTION {format.year.presented}
{unipampa.field.year-presented empty$
   {""}
   {unipampa.field.year-presented n.dashify}
if$
}

FUNCTION {format.field.address}
{ 't :=
  unipampa.field.address empty$ unipampa.field.organization empty$ and url empty$ and t empty$ and
    {bbl.no.address.no.publisher}
    {unipampa.field.address empty$
      %if an url is present we don't give a missing address "[s.l.]" notice
      {url empty$  {bbl.no.address ": "} {"" ""} if$}
      {unipampa.field.address ": "}
    if$
    t empty$
      {%if an organization is present then it is OK not to have a publisher
       unipampa.field.organization empty$ {* bbl.no.publisher * } 'pop$ if$}
      {* t * }
     if$}
  if$
}

FUNCTION {format.address}
{unipampa.field.address empty$
  { bbl.no.address}
  { unipampa.field.address}
 if$
}

FUNCTION {format.publisher.address}
{ unipampa.field.publisher "publisher" bibinfo.check format.field.address}

FUNCTION {format.publisher.address.relax}
{unipampa.field.publisher empty$ unipampa.field.address empty$ and {""}
 {unipampa.field.publisher "publisher" bibinfo.check format.field.address}
if$}

FUNCTION {format.organization.address}
{ unipampa.field.organization "organization" bibinfo.check format.field.address}

%retains current authorship for future use
FUNCTION {compare.authorship}
{abnt.repeated.author.omit
  {duplicate$ "" = 'skip$
    {duplicate$ previous.author =
      {duplicate$ 'previous.author :=
       pop$ bbl.same.field
       #1 'repeated.author :=}
      {duplicate$ 'previous.author :=
       #0 'repeated.author :=}
     if$}
   if$}
 'skip$
 if$
}

FUNCTION {format.author.or.organization}
{  unipampa.field.author empty$
    { unipampa.field.organization empty$ 'skip$
      { "\MakeUppercase{" unipampa.field.organization * "}" * "organization"  bibinfo.check output}
      if$}
    { format.authors output.nonnull }
  if$
  compare.authorship
}


FUNCTION {format.editor.or.organization}
{  unipampa.field.editor empty$
    { unipampa.field.organization empty$ 'skip$
      { "\MakeUppercase{" unipampa.field.organization * "}" * "organization"  bibinfo.check output}
      if$}
    { format.editors output.nonnull }
  if$
  compare.authorship
}

FUNCTION {format.author.or.editor.or.organization}
{ unipampa.field.author empty$
    { unipampa.field.editor empty$
        { unipampa.field.organization empty$
	    'skip$
            { "\MakeUppercase{" unipampa.field.organization * "}" * "organization"  bibinfo.check output}
          if$}
        { format.editors output.nonnull }
      if$}
    { format.authors output.nonnull }
  if$
  compare.authorship
}

FUNCTION {format.reprint}
{ unipampa.field.reprinted-text missing$
    {""}
    {unipampa.field.reprinted-text empty$
      {bbl.reprint} {unipampa.field.reprinted-text} if$
     bbl.colon *}
  if$
}

FUNCTION {format.journal}
{
  format.reprint
  unipampa.field.journal emphasize *
}


%generates the first label in \abntrefinfo to be used with \citeonline
FUNCTION {format.names.for.label1} %abnt-alf only
{ 's := "" 't :=
   #1 'nameptr :=  s num.names$ 'numnames :=
    numnames 'namesleft :=
    { namesleft #0 > }
    {abnt.last.names
       {s nameptr "{ll}{ jj}" format.name$}
       {s nameptr "{ll}" format.name$ #1 "{ll}" format.name$
        s nameptr "{ jj}" format.name$ *}
     if$
     't :=
      nameptr #1 >
        {namesleft #1 >
          { numnames abnt.etal.cite > abnt.etal.cite #0 = not and
	    {#0 'namesleft := abnt.etal.cite {bbl.etal *} 'skip$ if$}
	    {", " * t * } if$ }
            { t "others" =
              {abnt.etal.cite {bbl.etal *} 'skip$ if$}
                {numnames nameptr =
                {bbl.and * t *}
		'skip$ if$}
             if$
	     }
          if$ }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft := }
  while$
}


FUNCTION {format.names.for.label2} %abnt-alf only
{ 's := "" 't :=
   #1 'nameptr :=  s num.names$ 'numnames :=
    numnames 'namesleft :=
    { namesleft #0 > }
    {abnt.last.names
       {s nameptr "{ll}{ jj}" format.name$}
       {s nameptr "{ll}" format.name$ #1 "{ll}" format.name$
        s nameptr "{ jj}" format.name$ *}
     if$
     abnt.cite.style #0 = {"u" change.case$} 'skip$ if$ 't :=
      nameptr #1 >
        {namesleft #1 >
            { numnames abnt.etal.cite > 
	      {#0 'namesleft := abnt.etal.cite {bbl.etal *} 'skip$ if$} 
	      {"; " * t * } if$ }
            { t "OTHERS" = t "others" = or
	      {abnt.etal.cite {bbl.etal *} 'skip$ if$}
	      {numnames nameptr = { bbl.semicolon * t *} 'skip$ if$}
             if$
	     }
          if$ }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft := }
  while$
}

FUNCTION {format.title.for.label}
{  's :=
  #1 'title.pos :=   #1 'first.word :=
  "" 't :=
  {first.word}
    {s title.pos #1 substring$ 'title.char :=
        title.char "." = title.char ":" = or title.char ";" = or
	title.char "," = or title.char " " = or s t = or
       {#0 'first.word :=
       title.pos #1 + 'title.pos :=}
       {title.pos #1 + 'title.pos := t title.char * 't :=}
     if$
     }
  while$
s t = %title equals first word, dont use bbl.ldots
  {t  "}{" * t
  abnt.cite.style #0 = {"u" change.case$ * } 'skip$ if$}
  {t bbl.ldots * "}{" * t
  abnt.cite.style #0 = {"u" change.case$} 'skip$ if$ * bbl.ldots *}
if$
}

%cvs keys have the general form $key: value $
INTEGERS {key.pos value.pos}
FUNCTION {extract.cvs.key} %we borrow the functionality of format.title.for.label
{ 's := %holds the entire cvs string
  #1 'key.pos :=
  #0 'value.pos := %0= between first $ and :, 1=between : and second $, 2= at the end
  "" 't := %holds the resulting value
  {value.pos #0 = value.pos #1 = or}
    { s key.pos #1 substring$ 'title.char :=
      value.pos #0 =
      { title.char ":" = {#1 'value.pos := key.pos #1 + 'key.pos :=} 'skip$ if$}
      { title.char "$" =
        {#2 'value.pos :=}
        {t title.char * 't :=}
	if$}
     if$
     key.pos #1 + 'key.pos :=
     }
  while$
  t
}


FUNCTION {calc.extended.label}
{ "{"
  unipampa.field.author empty$ not
    {unipampa.field.author format.names.for.label1 * "}{" * unipampa.field.author format.names.for.label2 *}
    {unipampa.field.editor empty$ not
     {unipampa.field.editor format.names.for.label1 * "}{" *  unipampa.field.editor format.names.for.label2 *}
     {unipampa.field.org-short empty$ not
      {unipampa.field.org-short * "}{" * unipampa.field.org-short "u" change.case$ *}
      {unipampa.field.organization empty$ not
       {unipampa.field.organization * "}{" * "\MakeUppercase{" unipampa.field.organization * "}" * *}
        {unipampa.field.title empty$ not
         {unipampa.field.title format.title.for.label *}
         {"nada}{NADA" *}
       if$}
      if$}
     if$}
    if$}
   if$
 "}{" *
 unipampa.field.year empty$ 'skip$ {unipampa.field.year *} if$
 'label := %place the stack into label
 % final } will be placed in reverse.pass
}

FUNCTION {calc.simple.label}
{ unipampa.field.author empty$ not
    {unipampa.field.author format.names.for.label1}
    {unipampa.field.editor empty$ not
     {unipampa.field.editor format.names.for.label1}
     {unipampa.field.organization empty$ not
      {unipampa.field.organization}
      {unipampa.field.title empty$ not
       {unipampa.field.title}
       {""}
      if$}
     if$}
    if$}
   if$
 unipampa.field.year empty$ 'skip$ {" " * unipampa.field.year *} if$
}

FUNCTION {output.bibitem}
{ newline$
  abnt.alf
    {"\bibitem[" write$
    calc.simple.label
    write$ "]{"}
    {"\bibitem{"}
  if$
  write$ cite$ write$ "}" write$ newline$
  abnt.refinfo #1 = {"\abntrefinfo" write$ label write$ newline$} 'skip$ if$
  "{" write$
  "" before.all 'output.state :=
}
FUNCTION {output.hiddenbibitem}
{ newline$
  abnt.alf
    {"\hiddenbibitem[" write$
    calc.simple.label
    write$ "]{"}
    {"\bibitem{"}
  if$
  write$ cite$ write$ "}" write$ newline$
  abnt.refinfo #1 = {"\abntrefinfo" write$ label write$ newline$} 'skip$ if$
  "{" write$
  "" before.all 'output.state :=
}
FUNCTION {fin.entry}
{ add.period$ write$
  reprinted-from empty$ 'skip$
    {" " unipampa.field.reprinted-text empty$
      {bbl.reprint} {unipampa.field.reprinted-text} if$ * bbl.colon *
     "\abntreprintinfo{ " * reprinted-from * "}" * write$}
    if$
  abnt-note empty$ 'skip$
    {"\footnote{" abnt-note * "}" * write$} if$
  "}" write$
  %newline$
  write.entry.verbatim
}

FUNCTION { abnt.display.options}
{ 's := 't :=
  abnt.show.options #1 = % "warn"
  {"opção " t * " passou para " * s * warning$ } 'skip$ if$

  abnt.show.options #2 = % "list"
  {"Op\c c\~ao selecionada {\tt " t * "=}\verb+" * s * "+" * output new.sentence } 'skip$ if$
}

FUNCTION { abnt-options1 }
  {
    abnt-show-options empty$
    'skip$
      {abnt-show-options "no" =
        {#0} {abnt-show-options "warn" =
           {#1} {abnt-show-options "list" =
             {#2 } {#0 } if$} if$} if$
      'abnt.show.options :=} % #0 "no"; #1 "warn"; #2 "list"
    if$

    abnt.show.options #2 =
    {output.bibitem "Mudan\c ca de estilo ap\'os este ponto com o comando \verb!\citeoption{"
    cite$ * "}! " *
    output new.sentence} 'skip$ if$

    abnt-show-options empty$
    'skip$ {"abnt-show-options" abnt-show-options abnt.display.options} if$

    abnt-cite-style empty$
      'skip$
      {abnt-cite-style "(AUTHOR, YEAR)" =
        {#0 'abnt.cite.style :=}
	{abnt-cite-style "(Author, YEAR)" =
	  {#1 'abnt.cite.style :=}
	  {"opção " abnt-cite-style * " desconhecida" * warning$}
	 if$}
        if$
       "abnt-cite-style" abnt-cite-style abnt.display.options}if$

    abnt-experimental empty$
    'skip$ {abnt-experimental "yes" = 'abnt.experimental :=
    "abnt-experimental" abnt-experimental abnt.display.options} if$

    abnt-emphasize duplicate$ empty$
    'pop$ {'abnt.emphasize :=
    "abnt-emphasize" abnt.emphasize abnt.display.options
    abnt-emphasize "\bf" = abnt-emphasize "\it" = or abnt-emphasize "\em" = or
    abnt-emphasize "\bfseries" = or
      {"não use " abnt-emphasize * " para abnt-emphasize em " * cite$ *
      ", isto alterará TODO o texto. Use \textbf ou \emph. Veja a documentação abnt-bibtex-doc para mais detalhes." * warning$}
    'skip$ if$
    } if$

    abnt-doi empty$
      'skip$
      {abnt-doi "expand" =
        {abnt.doi.expand.to.url 'abnt.doi :=}
	{abnt-doi "link" =
	  {abnt.doi.link 'abnt.doi :=}
	  {abnt-doi "doi" =
	    {abnt.doi.leave.as.is 'abnt.doi :=}
	    {"opção " abnt-doi * " desconhecida" * warning$}
	   if$}
	 if$}
        if$
       "abnt-doi" abnt-doi abnt.display.options}if$
 }
FUNCTION { abnt-options2 }
  {
    abnt-full-initials empty$
    'skip$ {abnt-full-initials "yes" = 'abnt.full.initials :=
    "abnt-full-initials" abnt-full-initials abnt.display.options} if$

    abnt-last-names empty$
      'skip$
      {abnt-last-names "abnt" =   {#0}
        {abnt-last-names "bibtex" = {#1} {#0} if$} if$
       'abnt.last.names :=
       "abnt-last-names" abnt-last-names abnt.display.options}
    if$


    abnt-ldots-type empty$
      'skip$
      {abnt-ldots-type "none" =   {#0}
        {abnt-ldots-type "normal" = {#1}
          {abnt-ldots-type "math" =   {#2}
            {abnt-ldots-type "text" =   {#1} {#0}
	    if$} if$} if$} if$
       'abnt.ldots.type :=
       "abnt-ldots-type" abnt-ldots-type abnt.display.options}
    if$

    abnt-missing-year empty$
      'skip$
      {abnt-missing-year "void" = {#0}
	{abnt-missing-year "sd" = {#1} {#0} if$}
       if$
       'abnt.missing.year :=
       "abnt-missing-year" abnt-missing-year abnt.display.options}
    if$


    abnt-and-type empty$
    'skip$ {abnt-and-type "e" =
              {#0} {abnt-and-type "&" =
                {#1} {#0} if$} if$
            'abnt.and.type :=
      "abnt-and-type" abnt-and-type abnt.display.options}
    if$
    
    abnt-thesis-year empty$
    'skip$ {abnt-thesis-year "final" =
              {#0} {abnt-thesis-year "title" =
                {#1} {abnt-thesis-year "both" =
                  {#2} {#0} if$} if$} if$
            'abnt.thesis.year :=
      "abnt-thesis-year" abnt-thesis-year abnt.display.options}
    if$

    abnt-refinfo empty$
    'skip$ {abnt-refinfo "yes" = 'abnt.refinfo :=
    "abnt-refinfo" abnt-refinfo abnt.display.options} if$
}
FUNCTION { abnt-options3 }
  {

    abnt-dont-use-etal empty$
    'skip$ {abnt-dont-use-etal "yes" = {#0 'abnt.etal.list :=} 'skip$ if$
    "Uso da opção abnt-dont-use-etal se tornou obsoleto, usamos abnt-etal-list." warning$
    "abnt-etal-list" abnt.etal.list int.to.str$ abnt.display.options} if$

    abnt-etal-cite empty$
    'skip$ {abnt-etal-cite str.to.int 'abnt.etal.cite :=
    "abnt-etal-cite" abnt.etal.cite int.to.str$ abnt.display.options} if$

    abnt-etal-list empty$
    'skip$ {abnt-etal-list str.to.int 'abnt.etal.list :=
    "abnt-etal-list" abnt.etal.list int.to.str$ abnt.display.options} if$

    abnt-etal-text missing$
    'skip$ {abnt-etal-text  'abnt.etal.text :=
    "abnt-etal-text" abnt.etal.text abnt.display.options} if$

    abnt-no-etal-label empty$
    'skip$ {abnt-no-etal-label "yes" = {#0 'abnt.etal.cite :=} 'skip$ if$
    "Uso da opção abnt-no-etal-label se tornou obsoleto, usamos abnt-etal-cite." warning$
    "abnt-etal-cite" abnt.etal.cite int.to.str$ abnt.display.options} if$

    abnt-repeated-author-omit empty$
    'skip$ {abnt-repeated-author-omit "yes" =
            {#1 'abnt.repeated.author.omit :=}
	    {#0 'abnt.repeated.author.omit := "" 'previous.author :=} if$
    "abnt-repeated-author-omit" abnt-repeated-author-omit abnt.display.options} if$

    abnt-repeated-title-omit empty$ 'skip$
      {abnt-repeated-title-omit "yes" =
        {#1 'abnt.repeated.title.omit :=}
	{#0 'abnt.repeated.title.omit := "" 'previous.title :=} if$
        "abnt-repeated-title-omit" abnt-repeated-title-omit abnt.display.options
        abnt.repeated.author.omit not abnt.repeated.title.omit and
          {"Use abnt-repeated-title-omit=yes junto com abnt-repeated-author-omit=yes"
          warning$} 'skip$ if$} if$

    abnt-title-command empty$
    'skip$ {abnt-title-command "yes" =
            {#1 'abnt.title.command :=}
	    {#0 'abnt.title.command :=} if$
    "abnt-title-command" abnt-title-command abnt.display.options} if$

    abnt-url-package empty$ 'skip$
      {abnt-url-package "url" =
         {#1 'abnt.url.package :=}
         {abnt-url-package "hyperref" = {#2 'abnt.url.package :=} 'skip$ if$}
       if$
       "abnt-url-package" abnt-url-package abnt.display.options}
     if$

    abnt-verbatim-entry empty$
    'skip$ {abnt-verbatim-entry "yes" = 'abnt.verbatim.entry :=
    "abnt-verbatim-entry" abnt-verbatim-entry abnt.display.options} if$
  
  abnt.show.options #2 = 'fin.entry  'skip$ if$
  }


FUNCTION { iso-options1 }
  {
  iso-abbreviation empty$
    'skip$ {iso-abbreviation "standard" = 'iso.abbreviation :=
    "iso-abbreviation" iso-abbreviation abnt.display.options} if$
  iso-author-punctuation empty$
    'skip$ {iso-author-punctuation "void" = 'iso.author.punctuation :=
    "iso-author-punctuation" iso-author-punctuation abnt.display.options} if$
  iso-date-place empty$
    'skip$ {iso-date-place "ISO" = 'iso.date.place :=
    "iso-date-place" iso-date-place abnt.display.options} if$
  }

FUNCTION { abnt-options }
  {
  abnt-options1
  abnt-options2
  abnt-options3
  iso-options1
  }

FUNCTION { iso-options } { abnt-options }

FUNCTION { iso.year.label }
{  iso.date.place
     { abnt.alf
         {year.label output new.sentence}
	 'skip$ if$}
    'skip$ if$}

FUNCTION { iso.date }
{  iso.date.place
     { abnt.alf
	 'skip$ 
          {unipampa.field.year output new.sentence}
	 if$}
    'skip$ if$}

FUNCTION { non.iso.date }
  {iso.date.place  'skip$ {format.date output} if$}

FUNCTION {article}
{ output.bibitem
  format.author.or.organization  new.sentence
  iso.year.label
  format.title "title" output.check new.block
  format.journal output
  iso.date.place {format.year output} 'skip$ if$
  %iso.date.place {format.date output} 'skip$ if$
  %iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
  %               {format.year output new.sentence} if$
  unipampa.field.section "section" bibinfo.check output.dash
  unipampa.field.publisher "publisher" bibinfo.check output
  unipampa.field.address "address" bibinfo.check output
  format.volume output
  format.number output
  format.pages output
  non.iso.date
  format.issn output new.block
  format.note output new.block
  format.url
  fin.entry
}
FUNCTION {book}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.type output new.sentence
  format.btitle "title" output.check new.sentence
  format.furtherresp new.sentence
  format.edition output new.sentence
  format.publisher.address output
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.volume output new.sentence
  format.book.pages output
  format.illustrated
  format.dimensions  new.sentence
  format.howpublished output  new.sentence
  format.volume.number.series output new.sentence
  format.note output
  format.issn output %pode parecer curioso, mas revistas inteiras são tratadas como livro
  format.isbn output new.sentence
  format.url
  fin.entry
}
FUNCTION {booklet}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.type output new.sentence
  format.btitle "title" output.check new.sentence
  format.edition output new.sentence
  unipampa.field.address "address" bibinfo.check output
  format.bvolume output
  %format.date output  new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.book.pages output new.sentence
  format.volume.number.series output new.sentence
  format.note output
  format.isbn output new.sentence
  format.url
  fin.entry
}

FUNCTION {hidden}
{ output.hiddenbibitem
  fin.entry}

FUNCTION {inbook}
{ output.bibitem
  format.author.or.organization new.sentence
  iso.year.label
  format.title "title" output.check new.block
  format.in.ed.booktitle
  format.furtherresp new.sentence
  format.edition output new.sentence
  format.publisher.address output
  %format.year output new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.bvolume.if.no.series output
  format.volume.number.series output
  format.chapter.pages output new.sentence
  format.isbn output new.block
  format.note output new.block
  format.url
  fin.entry
}

FUNCTION {incollection}
{ output.bibitem
  format.author.or.organization new.sentence
  iso.year.label
  format.title "title" output.check new.sentence
  format.in.ed.booktitle
  format.edition output new.sentence
  format.publisher.address output
  %format.year output
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output} if$
  format.volume.number.series output new.sentence
  format.bvolume.if.no.series output
  format.chapter.pages output new.sentence
  format.isbn output new.block
  format.note output new.block
  format.url
  fin.entry
}
FUNCTION {inproceedings}
{ output.bibitem
  format.author.or.organization new.sentence
  iso.year.label
  format.title "title" output.check  new.sentence
  format.in.ed.booktitle
  format.publisher.address output
  %format.year output new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.bvolume.if.no.series output
  format.volume.number.series output
  format.pages output
  format.isbn output
  format.issn output new.sentence
  format.note output new.sentence
  format.url
  fin.entry
}
FUNCTION {journalpart}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.type output new.sentence
  format.btitle "title" output.check new.sentence
  format.furtherresp new.sentence
  format.edition output new.sentence
  format.publisher.address output
  format.volume output
  format.number output
  %format.date output new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.date output new.sentence} if$
  format.book.pages output
  format.illustrated
  format.dimensions  new.sentence
  format.note output
  format.issn output %pode parecer curioso, mas revistas inteiras são tratadas como livro
  format.isbn output new.sentence
  format.url
  fin.entry
}
FUNCTION {conference} { inproceedings }
FUNCTION {manual}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.btitle "title" output.check new.block
  format.furtherresp new.sentence
  format.edition output new.sentence
  format.address output
  %format.date output new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.bvolume.if.no.series output
  format.book.pages output new.sentence
  format.volume.number.series output new.sentence
  format.note output new.sentence
  format.url
  fin.entry
}

FUNCTION {misc}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.type output
  format.btitle output new.sentence
  format.furtherresp new.sentence
  format.publisher.address.relax output
  %format.date output  new.block
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.book.pages output new.sentence
  format.illustrated
  format.dimensions  new.sentence
  format.howpublished output  new.block
  format.volume.number.series output new.sentence
  format.note output  new.block
  format.url
  fin.entry
  empty.misc.check
}

FUNCTION {patent}
{ output.bibitem
  format.editor.or.organization new.sentence
  iso.year.label
  format.authors.plain  output new.sentence
  format.btitle output new.sentence
  format.furtherresp new.sentence
  %format.date output  new.block
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.patent.number output
  format.howpublished output  new.block
  format.note output  new.block
  format.url
  fin.entry
  empty.misc.check
}

FUNCTION {format.thesis.type}
{ unipampa.field.type empty$
    { type$ "phdthesis" = { "Tese (Doutorado)" }
      { type$ "mastersthesis" = { "Dissertação (Mestrado)" }
        { "Trabalho de Conclusão de Curso" } if$
      } if$
    }
    { unipampa.field.type } if$
}
FUNCTION {thesis}
{ output.bibitem
  format.authors "author" output.check new.block
  format.btitle "title" output.check new.sentence
  unipampa.field.advisor empty$ 'skip$ { "Orientador: " unipampa.field.advisor * output new.sentence } if$
  format.date "year" output.check new.sentence
  format.book.pages output new.sentence
  format.thesis.type output.nonnull
  unipampa.field.school "school" bibinfo.warn output.dash
  unipampa.field.address "address" bibinfo.check output
  format.date "year" output.check new.sentence
  format.note output new.block
  format.url
  fin.entry
}

FUNCTION {phdthesis}     { thesis }
FUNCTION {mastersthesis} { thesis }
FUNCTION {monography}    { thesis }

FUNCTION {proceedings}
{ output.bibitem
  iso.year.label
  format.editor.or.organization
  format.conference.info
  format.btitle "title" output.check
  format.bvolume output
  format.volume.number.series output
  unipampa.field.editor empty$
    { unipampa.field.publisher empty$
        'skip$
        { new.sentence format.publisher.address output format.year output}
      if$
    }
    { unipampa.field.publisher empty$
        { new.sentence
          format.organization.address output format.year output}
        { new.sentence
          unipampa.field.organization "organization" bibinfo.check output
          format.publisher.address output format.year output}
      if$ }
  if$
  new.sentence format.book.pages output new.sentence
  format.isbn output
  format.issn output  new.block
  format.note output  new.block
  format.url
  fin.entry
}


FUNCTION {legislation}
{ output.bibitem
  format.author.or.organization new.sentence
  format.title "title" output.check new.sentence
  format.journal output
  unipampa.field.address "address" bibinfo.check output
  format.volume output
  format.number output
  format.date "year" output.check new.sentence
  unipampa.field.section "section" bibinfo.check output
  format.pages output new.sentence
  format.note output new.sentence
  format.url
  fin.entry
}


FUNCTION {techreport} {manual}

FUNCTION {unpublished}
{ output.bibitem
  format.author.or.editor.or.organization new.sentence
  iso.year.label
  format.title "title" output.check  new.sentence
  format.note "note" output.check  new.sentence
  %format.date output new.sentence
  iso.date.place {abnt.alf 'skip$ {format.year output new.sentence} if$}
                 {format.year output new.sentence} if$
  format.url
  fin.entry
}

FUNCTION {default.type} { misc }
READ
FUNCTION {sortify}
{ purify$
  "l" change.case$
}
INTEGERS { len }
FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}
FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { format.single.name 't :=
      nameptr #1 >
        {
          nameptr #3
          #1 + =
          numnames #3
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          "   "  *
          namesleft #1 = t "others" = and
            { "zzzzz" * }
            { t sortify * }
          if$
        }
        { t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}
FUNCTION {any.sort}
{ unipampa.field.author empty$
  { unipampa.field.organization empty$
    { unipampa.field.editor empty$
      { unipampa.field.title empty$
        { key empty$
          { "para ordenar, precisa dos campos author, organization, editor, title ou key in " cite$ * warning$ ""}
          { key sortify }
        if$}
        { unipampa.field.title sortify}
      if$}
      { unipampa.field.editor sort.format.names }
    if$}
    { unipampa.field.organization sortify }
  if$}
  { unipampa.field.author sort.format.names }
if$
}

FUNCTION {presort}
{ 
 any.sort
  "    " * unipampa.field.year field.or.null sortify * "    " * unipampa.field.title field.or.null
  sort.format.title * #1 entry.max$ substring$
  %for non-alpha style we drop a void sort.key such that SORT has no effect
  abnt.alf 'skip$ {pop$ ""} if$ 'sort.key$ :=
  unipampa.field.year empty$ {""} {unipampa.field.year} if$ 'year.label :=
  calc.extended.label
}

FUNCTION {set.default.abnt.variables}
{ %if you change abnt-num to abnt-alf by hand you need also to change
  %the name of RCSfile by hand, otherwise cvs takes care of it.
  %
  "$RCSfile: abnt-alf.bst,v $ " extract.cvs.key
  %
  "abnt-alf.bst,v " = 'abnt.alf := % #1 para abnt-alf #0 para abnt-num
  "$Revision: v-1.9.7 $" extract.cvs.key 'abnt.bst.revision :=
  #0 'abnt.and.type     :=     % #0 "e"; #1 "&"
  "\emph" 'abnt.emphasize :=
  #0 'abnt.cite.style :=       %default norm version for NBR10520
                               %#0 \cite=(AUTHOR, YEAR)
			       %#1 \cite=(Author, YEAR)
  #0 'abnt.experimental :=
  abnt.doi.expand.to.url 'abnt.doi :=
  #3 'abnt.etal.cite :=
  #3 'abnt.etal.list :=
  "\textit{et al.}" 'abnt.etal.text :=
  #0 'abnt.full.initials :=
  #0 'abnt.last.names :=      %#0 abnt-style, #1 bibtex-style
  #1 'abnt.ldots.type :=      %#0 use nothing, #1 use \ldots, #2 use $\ldots$, 3# use {...}
  #0 'abnt.missing.year :=    %#0 "void"; #1 "[s.d.]"
  #0 'repeated.author :=
  #0 'abnt.repeated.author.omit :=
  #0 'abnt.repeated.title.omit :=
  #1 'abnt.refinfo :=
  #0 'abnt.show.options :=    % #0 "no"; #1 "warn"; #2 "list"
  #0 'abnt.thesis.year :=     % #0 "final"; #1 "title"; #2 "both"
  #0 'abnt.title.command :=   % #0 "no"; #1 "yes"
  #0 'abnt.url.package :=     % #0 "none"'; #2 "url"; #2 "hyperref"
  #0 'abnt.verbatim.entry :=
}
FUNCTION {set.default.iso.variables}
{ #0 'iso.abbreviation := % #0 ABNT-style; #1 ISO-style
  #0 'iso.author.punctuation := % #0 ABNT (Smith, A. B.); #1 ISO (Smith, AB)
  #0 'iso.date.place := % #0 ABNT-sty; #1 ISO-style
}
EXECUTE {set.default.abnt.variables}
EXECUTE {set.default.iso.variables}
FUNCTION {process.early.abnt.options}
{%here we intercept all entries which need priority handling
 %note: we cannot use type$ at this point
 abnt-and-type missing$
 abnt-experimental missing$ and
 abnt-etal-cite missing$ and
 abnt-etal-text missing$ and
 abnt-ldots-type missing$ and
 abnt-cite-style missing$ and
 abnt-no-etal-label missing$ and
 abnt-title-command missing$ and
 'skip$ {call.type$} if$
}
ITERATE {process.early.abnt.options}
FUNCTION {search.reprinted}
{  reprinted-from missing$ 'skip$
  {"\nocite{" reprinted-from * "}" * write$ newline$
  }
  if$
}
ITERATE {search.reprinted}
FUNCTION {abntreprintinfo}
{"\providecommand{\abntreprintinfo}[1]{%" write$ newline$
 " \citeonline{#1}}" write$ newline$}
EXECUTE {abntreprintinfo}
ITERATE {presort}
SORT
STRINGS { last.label next.extra}
INTEGERS { last.extra.num }
FUNCTION {forward.pass}
{ last.label label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      label 'last.label :=
    }
  if$
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  label extra.label * 'label :=
  year.label extra.label * 'year.label :=
  extra.label 'next.extra :=
  label "}" * 'label :=
}
ITERATE {forward.pass}
REVERSE {reverse.pass}
FUNCTION {begin.bib}
{
  abnt.alf
    {"\setlength{\labelsep}{0pt}" write$}
    'skip$
  if$
  "\begin{thebibliography}{}" write$ newline$
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  abnt.refinfo #1 =
  {"\providecommand{\abntrefinfo}[3]{}" write$ newline$}
  'skip$ if$
  "\providecommand{\abntbstabout}[1]{}" write$ newline$
  abnt.title.command
    {"\providecommand{\bibtextitlecommand}[2]{#2}" write$ newline$}
    'skip$ if$
  "\abntbstabout{" abnt.bst.revision * "}" * write$ newline$
  %Se você não usa abntcite e precisa que a margem direita não
  %seja justificada, descomente a linha seguinte
  %alternativamente coloque \bibliography{abnt-nrj,...
%  "\setlength{\rightskip}{0pt plus 2cm}" write$ newline$
}
EXECUTE {begin.bib}
EXECUTE {init.state.consts}
FUNCTION {process.entry}{call.type$}
ITERATE {process.entry}
FUNCTION {end.bib}
{ newline$ "\end{thebibliography}" write$ newline$
}
EXECUTE {end.bib}
FUNCTION {apresentacao}
{ "+---------------------------------------------------------+"
  "| http://www.abntex.net.br/                               |"
  "| Em caso de dúvidas ou problemas com este estilo procure |"
  abnt.alf
 {"| Estilo bibliográfico abntex2-alf.bst versão " abnt.bst.revision * "          |" *}
 {"| Estilo bibliográfico abntex2-num.bst versão " abnt.bst.revision * "          |" *}
 if$
  "+---------------------------------------------------------+"
  stack$
}
EXECUTE{apresentacao}
