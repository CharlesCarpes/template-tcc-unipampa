# Template LaTeX para TCC de graduação — UNIPAMPA

Template para elaboração de trabalhos de conclusão de curso de graduação da Universidade Federal do Pampa (UNIPAMPA), com estrutura monográfica, elementos pré e pós-textuais e estilo bibliográfico adaptado.

**Desenvolvimento e adaptação:** Charles Quevedo Carpes.  
**Versão distribuída:** V2 — 2026.  
**Compilação:** pdfLaTeX + BibTeX.

A estrutura foi preparada com base nos manuais de normalização da UNIPAMPA publicados em 2025. Conforme o histórico do projeto, foi conferida com um TCC aprovado em 2026 e passou por avaliação de bibliotecárias do SISBI/UNIPAMPA. Essa colaboração não implica homologação institucional do template. Confira também as exigências específicas do seu curso.

## Recursos

- Capa, folha de rosto, ficha catalográfica e folha de aprovação.
- Dedicatória, agradecimentos, epígrafe, resumo e abstract.
- Listas, sumário, capítulos, referências, glossário, apêndices e anexos.
- Opções de impressão em uma face ou frente e verso.
- Exemplos de figuras, tabelas, equações, citações e referências.
- Estilo bibliográfico local com adaptações para DOI, legislação, trabalhos acadêmicos e trabalhos apresentados em eventos.
- Tratamento interno de acentos latinos nos campos textuais da bibliografia, incluindo caracteres do português.
- Fonte Arimo, metricamente compatível com Arial.

Os textos, dados e referências são exemplos demonstrativos. Substitua-os pelo conteúdo e pelas fontes efetivamente utilizados no trabalho.

## Começar a usar

1. Baixe o repositório em **Code → Download ZIP** ou obtenha o pacote da versão desejada.
2. Importe os arquivos como um novo projeto no Overleaf ou em outro editor LaTeX com as dependências necessárias.
3. Configure `main.tex` como documento principal e selecione **pdfLaTeX**.
4. Preencha os dados acadêmicos em `dados.tex`.
5. Edite os capítulos, os elementos pré e pós-textuais e `referencias.bib`.
6. Compile e confira o PDF, especialmente as referências e os elementos exigidos pelo curso.

Mantenha `unipampa-tcc.cls` e `unipampa-alf.bst` na raiz do projeto. O PDF de exemplo não participa da compilação.

## Organização dos arquivos

| Arquivo ou pasta | Finalidade |
| --- | --- |
| `main.tex` | Documento principal; controla a ordem e a inclusão dos elementos. |
| `dados.tex` | Autoria do TCC, título, curso, orientação, banca e demais dados acadêmicos. |
| `unipampa-tcc.cls` | Classe com a formatação e os comandos do template. |
| `unipampa-alf.bst` | Estilo bibliográfico adaptado, derivado do abnTeX2. |
| `referencias.bib` | Base bibliográfica com exemplos comentados. |
| `latexmkrc` | Configuração da compilação automatizada. |
| `capitulos/` | Introdução, referencial teórico, metodologia, resultados e considerações finais. |
| `pretextuais/` | Resumos, agradecimentos, dedicatória, epígrafe e listas. |
| `pos-textuais/` | Glossário, apêndices e anexos. |
| `figuras/` | Imagens utilizadas no documento. |
| `documentos/` | PDFs externos, como ficha catalográfica e aprovação assinada. |
| `exemplo_compilado.pdf` | Prévia do documento fornecida com o template. |

## Compilação local

Utilize uma instalação de TeX Live ou MiKTeX com os pacotes indicados em `unipampa-tcc.cls`. Entre as dependências estão `abntex2`, `arimo`, `babel` com suporte a português, `siunitx`, `xurl` e `pdfpages`.

Na pasta do projeto, execute:

```sh
latexmk -pdf main.tex
```

Ou execute a sequência:

```sh
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

O projeto usa **BibTeX**, não Biber. Após substituir a classe ou o estilo bibliográfico, limpe os arquivos auxiliares e recompile. No Overleaf, utilize a opção de recompilar do zero.

## Personalização

### Dados e estrutura do trabalho

Preencha `dados.tex` com os dados do estudante e do trabalho. O comando `\autor` identifica o autor do TCC; os créditos de desenvolvimento do template ficam neste README e nos comentários dos arquivos-fonte.

Em `main.tex`, mantenha apenas os elementos necessários. Ao retirar um capítulo ou elemento opcional, ajuste também sua inclusão no documento principal. Siga a organização e os exemplos de títulos presentes nos arquivos.

### Impressão

Para impressão em uma face:

```latex
\documentclass[anverso]{unipampa-tcc}
```

Para impressão frente e verso, com margens espelhadas:

```latex
\documentclass[frente-verso]{unipampa-tcc}
```

### Ficha catalográfica e aprovação

Gere a ficha catalográfica no sistema institucional e salve o PDF em `documentos/ficha-catalografica.pdf`, conforme a configuração de `dados.tex`. Enquanto o arquivo não estiver disponível, o template apresenta uma página de reserva.

Para utilizar uma folha de aprovação assinada, salve o PDF na pasta `documentos/` e configure em `dados.tex`:

```latex
\arquivoFolhaAprovacao{documentos/folha-aprovacao-assinada.pdf}
```

### Citações

```latex
\citeonline{gil2022}        % Citação integrada à frase
\cite{gil2022}              % Citação entre parênteses
\cite[p.~25]{gil2022}       % Citação com página
\apud[p.~89]{lacerda1998}{mariano2005}
```

Para uma citação direta longa:

```latex
\begin{citacaodireta}
Trecho transcrito da obra consultada \cite[p.~25]{gil2022}.
\end{citacaodireta}
```

## Referências bibliográficas

Edite `referencias.bib` e utilize os comentários acima de cada entrada para escolher um exemplo adequado. A lista final apresenta as obras citadas no texto.

- Separe o título e o subtítulo nos campos `title` e `subtitle`; para a obra que contém um capítulo, use `booktitle` e `booksubtitle`.
- Em trabalhos acadêmicos, use `advisor` para o orientador, `school` para a instituição e `type` para a descrição do trabalho e do curso.
- Em eventos, use `organization`, `conference-number`, `conference-year` e `conference-location` para identificar o evento; `booktitle` identifica os anais e `address` o local da publicação.
- Cadastre DOI em `doi`, endereço eletrônico em `url` e data de acesso em `urlaccessdate`.
- Para legislação publicada em diário oficial, consulte o exemplo `@legislation`, incluindo o campo `section` quando aplicável.
- Os tipos `@legislation` e `@monography`, assim como alguns campos adicionais, dependem do estilo local. Preserve `unipampa-alf.bst` ao compartilhar o projeto.
- Salve o arquivo em UTF-8. Nomes como `Carlos Simões` e `Congresso Brasileiro de Informática na Educação` podem ser escritos diretamente com acentos: o estilo normaliza os caracteres latinos contemplados por sua rotina interna.
- Continue usando a sintaxe do LaTeX para caracteres especiais em campos textuais, como `\&` em nomes de revistas. Proteja siglas e nomes próprios com chaves quando necessário, por exemplo `{UFSM}`.

A normalização de acentos não modifica URLs, DOI nem chaves de citação. Revise a saída final de referências com características que não estejam representadas nos exemplos.

## Autoria e créditos

**Charles Quevedo Carpes** — desenvolvimento, organização e adaptação do template para TCC de graduação da UNIPAMPA.

O projeto utiliza a classe `abntex2` e outros pacotes da comunidade LaTeX. O arquivo `unipampa-alf.bst` deriva de `abntex2-alf.bst`, versão 1.9.7, do grupo abnTeX2, com modificações locais para este template. Os créditos e avisos dos autores originais devem ser preservados.

Agradecimento às bibliotecárias do SISBI/UNIPAMPA pela avaliação relatada no histórico do projeto.

## Como citar o template

Identificação sugerida da produção:

> CARPES, Charles Quevedo. **Template LaTeX para TCC de graduação da UNIPAMPA**. Versão V2. 2026. Template e código-fonte.

Ao utilizar esta identificação em uma referência, acrescente o endereço público do repositório ou da versão consultada e a data de acesso. Prefira indicar a versão efetivamente utilizada.

## Relatar problemas e contribuir

Abra uma issue com a descrição do problema, a versão do template, o compilador utilizado e um exemplo mínimo que permita reproduzi-lo. Para problemas de compilação, inclua o trecho relevante do log. Remova dados pessoais e conteúdo não público antes de compartilhar os arquivos.

Sugestões de melhoria podem ser apresentadas por issues ou pull requests. Para alterações de normalização, indique o manual e a seção que fundamentam a proposta.

## Licenciamento

Copyright © 2026 Charles Quevedo Carpes — contribuições próprias, organização e adaptações do template.

Os componentes autorais do projeto são distribuídos sob a **LaTeX Project Public License (LPPL), versão 1.3c ou posterior**. Consulte o texto integral em [LICENSE](LICENSE) e o escopo detalhado em [AUTORIA.md](AUTORIA.md).

**Responsável pela manutenção:** Charles Quevedo Carpes.  
**Status de manutenção LPPL:** `author-maintained`.

O arquivo `unipampa-alf.bst` deriva de `abntex2-alf.bst` v1.9.7. Permanecem preservados os créditos do grupo abnTeX2 e a indicação LPPL 1.3 ou posterior da base. A versão original pode ser obtida na [página do abnTeX2 no CTAN](https://ctan.org/pkg/abntex2). Esta variante local não é mantida pela equipe abnTeX2.

É permitido usar, modificar e redistribuir o projeto conforme as condições aplicáveis da licença. Ao redistribuir adaptações, preserve os avisos e identifique as alterações. O projeto é fornecido sem garantia.

A licença do template não atribui ao seu desenvolvedor a autoria dos trabalhos acadêmicos produzidos com ele. O texto original do estudante e os materiais de terceiros conservam seus próprios direitos. Não é exigida a inclusão do nome do desenvolvedor na capa ou nos agradecimentos; citar o template é uma forma recomendada de reconhecimento.

Imagens, obras citadas e outros materiais de terceiros não recebem uma nova licença por estarem presentes nos exemplos. Consulte [AUTORIA.md](AUTORIA.md).

## Documentação institucional

Consulte os manuais e orientações disponíveis na [página de normalização do SISBI/UNIPAMPA](https://sites.unipampa.edu.br/sisbi/normalizacao/).
