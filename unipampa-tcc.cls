% Template LaTeX para TCC de graduação da UNIPAMPA — V2
% Copyright (c) 2026 Charles Quevedo Carpes.
% Autoria das contribuições próprias, organização e adaptações do template.
% This work may be distributed and/or modified under the conditions of the
% LaTeX Project Public License, version 1.3c or (at your option) any later version.
% License: https://www.latex-project.org/lppl/lppl-1-3c.txt (see LICENSE).
% This work has the LPPL maintenance status `author-maintained'.
% The Current Maintainer of this work is Charles Quevedo Carpes.
% Consulte AUTORIA.md para escopo, créditos e relação dos arquivos.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unipampa-tcc}[2026/10/16 v1.2 Classe para TCC de graduacao da UNIPAMPA - otimizada para Overleaf]

% -----------------------------------------------------------------------------
% Opcoes da classe
%   anverso       : margens para impressao em uma face (padrao)
%   frente-verso  : margens espelhadas para impressao em duas faces
%   cabecalho     : cabecalho corrido opcional (desativado por padrao)
% -----------------------------------------------------------------------------
\newif\ifunipampa@twoside
\newif\ifunipampa@runninghead
\unipampa@twosidefalse
\unipampa@runningheadfalse

\DeclareOption{anverso}{\unipampa@twosidefalse}
\DeclareOption{frente-verso}{\unipampa@twosidetrue}
\DeclareOption{oneside}{\unipampa@twosidefalse}
\DeclareOption{twoside}{\unipampa@twosidetrue}
\DeclareOption{cabecalho}{\unipampa@runningheadtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

\ifunipampa@twoside
  \LoadClass[12pt,a4paper,openany,twoside]{abntex2}
\else
  \LoadClass[12pt,a4paper,openany,oneside]{abntex2}
\fi

% -----------------------------------------------------------------------------
% Motor e fonte
% Versao otimizada para o plano gratuito do Overleaf: usa pdfLaTeX, que compila
% consideravelmente mais rapido que LuaLaTeX. A fonte Arimo e metricamente
% compativel com Arial e e fornecida pelo proprio TeX Live/Overleaf.
% Esse template foi testado no textpage.com
% -----------------------------------------------------------------------------
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[sfdefault,type1]{arimo}
\renewcommand{\familydefault}{\sfdefault}

% -----------------------------------------------------------------------------
% Idioma, codificacao e microtipografia
% -----------------------------------------------------------------------------
\RequirePackage{babel}
\RequirePackage{microtype}
\RequirePackage{csquotes}
\RequirePackage{ragged2e}
\RequirePackage{indentfirst}

% -----------------------------------------------------------------------------
% Pagina, margens e numeracao
% Manual UNIPAMPA 2025: A4; 3 cm superior/esquerda no anverso, 2 cm nas demais;
% no verso, 3 cm superior/direita e 2 cm inferior/esquerda.
% -----------------------------------------------------------------------------
\RequirePackage{geometry}
\ifunipampa@twoside
  \geometry{a4paper,inner=3cm,outer=2cm,top=3cm,bottom=2cm,headheight=15pt,headsep=0.55cm,footskip=1cm}
\else
  \geometry{a4paper,left=3cm,right=2cm,top=3cm,bottom=2cm,headheight=15pt,headsep=0.55cm,footskip=1cm}
\fi

% O abntex2 e baseado na classe memoir. Usamos o mecanismo nativo de
% cabecalhos do memoir, evitando a incompatibilidade e o aviso do fancyhdr.
\makepagestyle{unipampa}
\newcommand{\unipampa@numeropagina}{\fontsize{10}{12}\selectfont\thepage}
\newcommand{\unipampa@cabecalhocorrido}{\fontsize{9}{11}\selectfont}
\ifunipampa@twoside
  \ifunipampa@runninghead
    \makeevenhead{unipampa}{\unipampa@numeropagina}{}{\unipampa@cabecalhocorrido\rightmark}
    \makeoddhead{unipampa}{\unipampa@cabecalhocorrido\leftmark}{}{\unipampa@numeropagina}
  \else
    \makeevenhead{unipampa}{\unipampa@numeropagina}{}{}
    \makeoddhead{unipampa}{}{}{\unipampa@numeropagina}
  \fi
\else
  \ifunipampa@runninghead
    \makeoddhead{unipampa}{\unipampa@cabecalhocorrido\leftmark}{}{\unipampa@numeropagina}
  \else
    \makeoddhead{unipampa}{}{}{\unipampa@numeropagina}
  \fi
  \makeevenhead{unipampa}{}{}{\unipampa@numeropagina}
\fi
\makeevenfoot{unipampa}{}{}{}
\makeoddfoot{unipampa}{}{}{}
\pagestyle{empty}

% -----------------------------------------------------------------------------
% Corpo do texto
% -----------------------------------------------------------------------------
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0pt}
\AtBeginDocument{\OnehalfSpacing\justifying}
\setlength{\emergencystretch}{2em}
\widowpenalty=10000
\clubpenalty=10000
\displaywidowpenalty=10000

% Fonte 10 para notas, legendas e elementos reduzidos
\renewcommand{\footnotesize}{\fontsize{10}{12}\selectfont}
\renewcommand{\small}{\fontsize{10}{12}\selectfont}

% Notas de rodape: fonte 10, espaco simples e alinhamento suspenso
\RequirePackage[hang,flushmargin,bottom]{footmisc}
\setlength{\footnotemargin}{1.2em}
\renewcommand{\footnotelayout}{\SingleSpacing\justifying\fontsize{10}{12}\selectfont}

% -----------------------------------------------------------------------------
% Titulos e numeracao progressiva (ate o quinto nivel)
% -----------------------------------------------------------------------------
\setsecnumdepth{subparagraph}
\settocdepth{subparagraph}

\renewcommand{\ABNTEXchapterfont}{\bfseries\normalsize}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\bfseries\normalsize}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfont}{\bfseries\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsectionfont}{\itshape\normalsize}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont\normalsize}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

\setlength{\beforechapskip}{0pt}
\setlength{\afterchapskip}{1.5\baselineskip}
\setlength{\beforesecskip}{1.5\baselineskip}
\setlength{\aftersecskip}{0.75\baselineskip}
\setlength{\beforesubsecskip}{1.5\baselineskip}
\setlength{\aftersubsecskip}{0.75\baselineskip}

% Titulos sem indicativo numerico centralizados, em negrito e caixa alta
\renewcommand{\printchapternonum}{%
  \centering\bfseries\normalsize
}

% -----------------------------------------------------------------------------
% Sumario e listas
% -----------------------------------------------------------------------------
\renewcommand{\contentsname}{SUMÁRIO}
\renewcommand{\listfigurename}{LISTA DE FIGURAS}
\renewcommand{\listtablename}{LISTA DE TABELAS}
\renewcommand{\bibname}{REFERÊNCIAS}
\renewcommand{\appendixname}{APÊNDICE}
\renewcommand{\appendixpagename}{APÊNDICES}
\renewcommand{\appendixtocname}{APÊNDICES}

\renewcommand{\cftchapterfont}{\bfseries}
\renewcommand{\cftchapterpagefont}{\bfseries}
\renewcommand{\cftsectionfont}{\normalfont}
\renewcommand{\cftsectionpagefont}{\normalfont}
\renewcommand{\cftsubsectionfont}{\normalfont}
\renewcommand{\cftsubsectionpagefont}{\normalfont}
\setlength{\cftbeforechapterskip}{0pt}
\setlength{\cftbeforesectionskip}{0pt}
\setlength{\cftbeforesubsectionskip}{0pt}

% -----------------------------------------------------------------------------
% Figuras, quadros e tabelas
% -----------------------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage{threeparttable}
\RequirePackage{siunitx}
\RequirePackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}

\captionsetup{%
  font=normalsize,
  labelfont=normalfont,
  textfont=normalfont,
  labelsep=endash,
  justification=justified,
  singlelinecheck=false,
  skip=6pt
}
\captionsetup[figure]{position=above}
\captionsetup[table]{position=above}

\renewcommand{\fonte}[1]{%
  \par\vspace{2pt}\noindent\begin{minipage}{\linewidth}
  \SingleSpacing\fontsize{10}{12}\selectfont Fonte: #1.
  \end{minipage}\par
}
\newcommand{\notatabela}[1]{%
  \par\vspace{2pt}\noindent\begin{minipage}{\linewidth}
  \SingleSpacing\fontsize{10}{12}\selectfont Nota: #1.
  \end{minipage}\par
}

% Quadro como tipo de ilustracao separado
\DeclareCaptionType[fileext=loq,listname={LISTA DE QUADROS},name=Quadro]{quadro}
\newcommand{\listadequadros}{%
  \cleardoublepage
  \listofquadros
}

% -----------------------------------------------------------------------------
% Equacoes, unidades e codigo
% -----------------------------------------------------------------------------
\RequirePackage{amsmath,amssymb,mathtools}
\RequirePackage{listings}
\lstset{%
  basicstyle=\ttfamily\fontsize{10}{12}\selectfont,
  breaklines=true,
  frame=single,
  numbers=left,
  numberstyle=\fontsize{9}{11}\selectfont,
  xleftmargin=1.5em,
  framexleftmargin=1.2em,
  showstringspaces=false,
  columns=fullflexible
}

% -----------------------------------------------------------------------------
% Alíneas e subalíneas
% -----------------------------------------------------------------------------
\RequirePackage{enumitem}
% Os ambientes `alineas` e `subalineas` ja sao fornecidos pelo abntex2.

% -----------------------------------------------------------------------------
% Citacoes e referencias: autor-data
% Base: abntex2cite. A citacao entre parenteses e ajustada para letras
% maiusculas e minusculas, conforme NBR 10520:2023 e manual UNIPAMPA 2025.
% -----------------------------------------------------------------------------
\RequirePackage[alf,abnt-etal-list=0,abnt-etal-cite=4,abnt-emphasize=bf,abnt-full-initials=yes]{abntex2cite}

% Estilo local distribuido junto ao template (BibTeX).
\bibliographystyle{unipampa-alf}
% URLs sem os delimitadores angulares antigos do abntex2cite.
\AtBeginDocument{\def\UrlLeft{}\def\UrlRight{}}

% Converte a forma narrativa gerada pelo abntex2cite ("Silva, Souza e Lima")
% para a forma parentetica exigida pelo manual 2025 ("Silva; Souza; Lima").
\ExplSyntaxOn
\NewDocumentCommand{\unipampaNomeParentetico}{m}
  {
    \tl_set:Nn \l_tmpa_tl {#1}
    \tl_replace_all:Nnn \l_tmpa_tl {~e~} {;~}
    \tl_replace_all:Nnn \l_tmpa_tl {,~} {;~}
    \tl_use:N \l_tmpa_tl
  }
\ExplSyntaxOff


\makeatletter
% Atualiza a forma parentética armazenada no arquivo auxiliar. Em vez da forma
% antiga em caixa alta, usa a forma narrativa convertida para separação por
% ponto e vírgula, conforme o Manual de Citações da UNIPAMPA (2025).
\renewcommand{\abntrefinfo}[3]{%
  \if@filesw
    {%
      \let\protect\noexpand
      \ifthenelse{\boolean{ABNThyperref}}{%
        \immediate\write\@auxout{\string\bibciteEXPL{\abntnextkey}{#1}}%
        \immediate\write\@auxout{\string\bibciteIMPL{\abntnextkey}{\protect\unipampaNomeParentetico{#1}}}%
        \immediate\write\@auxout{\string\bibciteYEAR{\abntnextkey}{#3}}%
      }{%
        \immediate\write\@auxout{\string\bibcite{\abntnextkey++EXPL}{#1}}%
        \immediate\write\@auxout{\string\bibcite{\abntnextkey++IMPL}{\protect\unipampaNomeParentetico{#1}}}%
        \immediate\write\@auxout{\string\bibcite{\abntnextkey++YEAR}{#3}}%
      }%
    }%
  \fi
  \ifthenelse{\boolean{ABCIfoot}}%
    {\ifthenelse{\boolean{ABCItextondemand}}%
      {\@ifundefined{ABCIdemand@\abntnextkey}{\let\ABCIprocesscitetext\@gobble}{\let\ABCIprocesscitetext\ABCIgetcitetext}}%
      {\let\ABCIprocesscitetext\ABCIgetcitetext}}%
    {\ifthenelse{\boolean{ABCItextondemand}}%
      {\@ifundefined{ABCIdemand@\abntnextkey}{\let\ABCIprocesscitetext\relax}{\let\ABCIprocesscitetext\ABCIgetcitetextecho}}%
      {\let\ABCIprocesscitetext\ABCIgetcitetextecho}}%
  \ABCIprocesscitetext
}
\makeatother


% Ambiente para citacao direta com mais de tres linhas perfeitamente balanceado
\newenvironment{citacaodireta}{%
  \vspace{0.3\baselineskip}% Espaçamento superior controlado
  \begin{list}{}{%
    \setlength{\leftmargin}{4cm}%
    \setlength{\rightmargin}{0cm}%
    \setlength{\topsep}{0pt}%
    \setlength{\partopsep}{0pt}%
  }%
  \item\relax\SingleSpacing\fontsize{10}{12}\selectfont\justifying
}{%
  \end{list}%
  \vspace{0.5\baselineskip}% Espaçamento inferior simétrico
}

% -----------------------------------------------------------------------------
% Hiperlinks e metadados do PDF
% -----------------------------------------------------------------------------
\RequirePackage{xcolor}
\RequirePackage{xurl}
\RequirePackage{hyperref}
\hypersetup{%
  colorlinks=false,
  pdfborder={0 0 0},
  bookmarksnumbered=true,
  bookmarksopen=true,
  unicode=true
}
\RequirePackage{bookmark}
\RequirePackage{pdfpages}
\RequirePackage{etoolbox}
\RequirePackage{xparse}




% -----------------------------------------------------------------------------
% Campos institucionais e academicos
% -----------------------------------------------------------------------------
\makeatletter
\providecommand{\imprimirsubtitulo}{}
\providecommand{\imprimircurso}{}
\providecommand{\imprimircampus}{}
\providecommand{\imprimirgrau}{}
\providecommand{\imprimirareaconcentracao}{}
\providecommand{\imprimirlinhapesquisa}{}
\providecommand{\imprimirdatadefesa}{}
\providecommand{\imprimircoorientador}{}
\providecommand{\imprimirlogo}{}
\providecommand{\imprimirfichaarquivo}{documentos/ficha-catalografica.pdf}
\providecommand{\imprimiraprovacaoarquivo}{}

\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}
\newcommand{\campus}[1]{\renewcommand{\imprimircampus}{#1}}
\newcommand{\grau}[1]{\renewcommand{\imprimirgrau}{#1}}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}
\newcommand{\datadefesa}[1]{\renewcommand{\imprimirdatadefesa}{#1}}
\newcommand{\logo}[1]{\renewcommand{\imprimirlogo}{#1}}
\newcommand{\arquivoFichaCatalografica}[1]{\renewcommand{\imprimirfichaarquivo}{#1}}
\newcommand{\arquivoFolhaAprovacao}[1]{\renewcommand{\imprimiraprovacaoarquivo}{#1}}

% Natureza pode ser preenchida integralmente pelo usuario.
% O comando \natureza ja e fornecido pelo abntex2.

% Banca examinadora: cada membro e armazenado e impresso na ordem declarada.
\newcommand{\unipampa@banca}{}
\newcommand{\membrobanca}[3]{%
  \gappto\unipampa@banca{%
    \par\vspace{1.1\baselineskip}
    \noindent\rule{0.78\textwidth}{0.4pt}\\[-0.2em]
    #1\\
    #2\\
    #3\par
  }%
}

% -----------------------------------------------------------------------------
% Elementos pre-textuais
% -----------------------------------------------------------------------------
\newcommand{\unipampa@tituloCompleto}{%
  \imprimirtitulo
  \ifdefempty{\imprimirsubtitulo}{}{:\space\imprimirsubtitulo}%
}

\renewcommand{\imprimircapa}{%
  \clearpage
  \thispagestyle{empty}
  \setcounter{page}{1}
  \begin{center}
    \SingleSpacing
    \ifdefempty{\imprimirlogo}{}{%
      \IfFileExists{\imprimirlogo}{\includegraphics[height=1.7cm]{\imprimirlogo}\\[0.7em]}{}
    }
    {\bfseries\MakeUppercase{\imprimirinstituicao}\par}
    \ifdefempty{\imprimircampus}{}{\bfseries\MakeUppercase{\imprimircampus}\par}
    {\bfseries\MakeUppercase{\imprimircurso}\par}
    \vfill
    {\bfseries\MakeUppercase{\imprimirautor}\par}
    \vfill
    {\bfseries\MakeUppercase{\unipampa@tituloCompleto}\par}
    \vfill
    {\bfseries\imprimirlocal\par}
    {\bfseries\imprimirdata\par}
  \end{center}
  \clearpage
}

\renewcommand{\imprimirfolhaderosto}{%
  \thispagestyle{empty}
  \begin{center}
    \SingleSpacing
    {\bfseries\MakeUppercase{\imprimirautor}\par}
    \vspace*{0.18\textheight}
    {\bfseries\MakeUppercase{\unipampa@tituloCompleto}\par}
  \end{center}
  \vspace*{0.13\textheight}
  \noindent\hspace*{0.5\textwidth}%
  \begin{minipage}{0.5\textwidth}
    \SingleSpacing\justifying\setlength{\parindent}{0pt}
    \imprimirpreambulo
    \ifdefempty{\imprimirareaconcentracao}{}{\par\vspace{\baselineskip}Área de concentração: \imprimirareaconcentracao.}
    \ifdefempty{\imprimirlinhapesquisa}{}{\par Linha de pesquisa: \imprimirlinhapesquisa.}
    \par\vspace{\baselineskip}
    Orientador: \imprimirorientador
    \ifdefempty{\imprimircoorientador}{}{\par\vspace{\baselineskip} Coorientador: \imprimircoorientador}
  \end{minipage}
  \vfill
  \begin{center}
    \SingleSpacing
    {\bfseries\imprimirlocal\par}
    {\bfseries\imprimirdata\par}
  \end{center}
  \clearpage
}

% Insere a ficha na pagina seguinte e a exclui da contagem, como determina o manual.
\newcommand{\inserirfichacatalografica}{%
  \hypersetup{pageanchor=false}%
  \IfFileExists{\imprimirfichaarquivo}{%
    \includepdf[pages=1,pagecommand={\thispagestyle{empty}}]{\imprimirfichaarquivo}%
  }{%
    \thispagestyle{empty}
    \vspace*{0.52\textheight}
    \begin{center}
      \begin{minipage}{0.82\textwidth}
        \centering\SingleSpacing\fontsize{10}{12}\selectfont
        ESPAÇO RESERVADO PARA A FICHA CATALOGRÁFICA\\[1em]
        Substitua o arquivo indicado em \texttt{\string\arquivoFichaCatalografica} pelo PDF gerado no Sistema GURI.
      \end{minipage}
    \end{center}
    \clearpage
  }%
  \addtocounter{page}{-1}% ficha nao e contada
  \hypersetup{pageanchor=true}%
}

\newcommand{\imprimirfolhadeaprovacao}{%
  \ifdefempty{\imprimiraprovacaoarquivo}{%
    \thispagestyle{empty}
    \begin{center}
      \SingleSpacing
      {\bfseries\MakeUppercase{\imprimirautor}\par}
      %\vspace{2\baselineskip}
      \vspace*{0.18\textheight}
      {\bfseries\MakeUppercase{\unipampa@tituloCompleto}\par}
    \end{center}
    \vspace{2\baselineskip}
    \noindent\hspace*{0.5\textwidth}%
    \begin{minipage}{0.5\textwidth}
      \SingleSpacing\justifying\setlength{\parindent}{0pt}
      \imprimirpreambulo
      \ifdefempty{\imprimirareaconcentracao}{}{\par\vspace{\baselineskip}Área de concentração: \imprimirareaconcentracao.}
    \end{minipage}
    \vspace{2\baselineskip}
    \begin{center}
      \SingleSpacing
      Trabalho de Conclusão de Curso defendido e aprovado em: \imprimirdatadefesa.\\[1.2\baselineskip]
      Banca examinadora:
      \unipampa@banca
    \end{center}
    \clearpage
  }{%
    \IfFileExists{\imprimiraprovacaoarquivo}{%
      \includepdf[pages=1,pagecommand={\thispagestyle{empty}}]{\imprimiraprovacaoarquivo}%
    }{%
      \ClassWarning{unipampa-tcc}{Arquivo da folha de aprovacao nao encontrado. Gerando a folha editavel}
      \renewcommand{\imprimiraprovacaoarquivo}{}
      \imprimirfolhadeaprovacao
    }%
  }%
}

\newcommand{\fazerDedicatoria}[1]{%
  \thispagestyle{empty}
  \vspace*{\fill}
  \noindent\hspace*{0.5\textwidth}\begin{minipage}{0.5\textwidth}
    \SingleSpacing\justifying #1
  \end{minipage}
  \clearpage
}

\newenvironment{agradecimentostcc}{%
  \chapter*{AGRADECIMENTOS}
  \OnehalfSpacing\justifying
}{\clearpage}

\newcommand{\fazerEpigrafe}[2]{%
  \thispagestyle{empty}
  \vspace*{\fill}
  \noindent\hspace*{0.5\textwidth}\begin{minipage}{0.5\textwidth}
    \SingleSpacing\justifying\enquote{#1}\par\raggedleft #2
  \end{minipage}
  \clearpage
}

\newenvironment{resumotcc}{%
  \chapter*{RESUMO}
  \noindent\ignorespaces
}{\par\clearpage}
\newcommand{\palavraschave}[1]{%
  \par\vspace{\baselineskip}\noindent\textbf{Palavras-chave:} #1.
}

\newenvironment{abstracttcc}{%
  \chapter*{ABSTRACT}
  \noindent\ignorespaces
}{\par\clearpage}
\newcommand{\keywords}[1]{%
  \par\vspace{\baselineskip}\noindent\textbf{Keywords:} #1.
}


\newenvironment{listadeabreviaturas}{%
  \chapter*{LISTA DE ABREVIATURAS}
  \begin{description}[style=multiline,leftmargin=3.5cm,labelwidth=3cm,font=\normalfont,itemsep=0pt,topsep=0pt]
}{\end{description}\clearpage}



\newenvironment{listadesiglas}{%
  \chapter*{LISTA DE SIGLAS}
  \begin{description}[style=multiline,leftmargin=3.5cm,labelwidth=3cm,font=\normalfont,itemsep=0pt,topsep=0pt]
}{\end{description}\clearpage}

\newenvironment{listadesimbolos}{%
  \chapter*{LISTA DE SÍMBOLOS}
  \begin{description}[style=multiline,leftmargin=3.5cm,labelwidth=3cm,font=\normalfont,itemsep=0pt,topsep=0pt]
}{\end{description}\clearpage}

\newcommand{\sumariotcc}{%
  \cleardoublepage
  \renewcommand{\contentsname}{SUMÁRIO}
\addto\captionsbrazil{\renewcommand{\contentsname}{SUMÁRIO}}
  \pdfbookmark[0]{SUMÁRIO}{sumario}
  
  % Configura fontes e páginas em negrito para Capítulos, Seções e Subseções
  \renewcommand{\cftchapterfont}{\bfseries}
  \renewcommand{\cftchapterpagefont}{\bfseries}
  
  \renewcommand{\cftsectionfont}{\bfseries}
  \renewcommand{\cftsectionpagefont}{\bfseries}
  
  \renewcommand{\cftsubsectionfont}{\bfseries}
  \renewcommand{\cftsubsectionpagefont}{\bfseries}
  
  % Garante que os pontos (leader) também herdem o negrito se necessário
  \renewcommand{\cftchapterleader}{\bfseries\cftdotfill{\cftdotsep}}
  \renewcommand{\cftsectionleader}{\bfseries\cftdotfill{\cftdotsep}}
  \renewcommand{\cftsubsectionleader}{\bfseries\cftdotfill{\cftdotsep}}

  \tableofcontents*
  \clearpage
}

% Inicia a parte textual sem reiniciar o contador de paginas.
\newcommand{\iniciotextual}{%
  \clearpage
  \textual
  \pagestyle{unipampa}
  \aliaspagestyle{chapter}{unipampa}
  \thispagestyle{unipampa}
}
\newcommand{\iniciopostextual}{%
  \postextual
  \pagestyle{unipampa}
}

% -----------------------------------------------------------------------------
% Apendices e anexos
% -----------------------------------------------------------------------------
\newcommand{\iniciarapendices}{%
  \begin{apendicesenv}
  \renewcommand{\appendixname}{APÊNDICE}
}
\newcommand{\finalizarapendices}{\end{apendicesenv}}

\newenvironment{anexostcc}{%
  \begin{anexosenv}
  \renewcommand{\chapternumbername}{ANEXO}
}{\end{anexosenv}}

% Bibliografia com espacamento simples e uma linha em branco entre entradas.
\renewenvironment{thebibliography}[1]
  {\chapter*{\raggedright REFERÊNCIAS}%
   \addtocontents{toc}{\protect\cftsetindents{chapter}{\cftlastnumwidth}{2em}}%
   \addcontentsline{toc}{chapter}{REFERÊNCIAS}%
   \SingleSpacing%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \RaggedRight
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000
   \sfcode`\.\@m
   \setlength{\itemsep}{\baselineskip}%
   \setlength{\parsep}{0pt}%
  }
  {\def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}\endlist}

% Metadados do PDF apos os campos serem definidos
\AtBeginDocument{%
  \hypersetup{pdftitle={\unipampa@tituloCompleto},pdfauthor={\imprimirautor},pdfsubject={Trabalho de Conclusão de Curso - UNIPAMPA}}
}
\makeatother
