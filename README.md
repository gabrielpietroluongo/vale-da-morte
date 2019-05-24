# Trabalho I de Algoritmos Numéricos


Guia de Execução
-------------

O arquivo principal do trabalho é o `scripts/main.m`. Portanto, **não se deve chamar pela linha de comando os scripts das questões diretamente, mas sim chamar o script main.m e selecionar as questões por meio do menu principal.** Isso ocorre devido a algumas configurações que devem ser inicializadas junto ao programa, como o uso de cache nas questões com cálculos demorados. Adicionalmente, **o script main deve ser chamado de dentro da pasta scripts**, ou seja, o octave deve ser executado dentro da pasta scripts (por motivos de modularização de scripts).

As strings escritas na tela estão definidas nos arquivos em `scripts/strings`.

A pasta `cache` contém alguns resultados que levam mais tempo para serem encontrados dentro do programa. Isso possibilita uma execução mais rápida. O uso do cache pode ser ativado ou desativado a partir do menu principal do projeto.

A pasta `dados` contém as matrizes e os dados de ajuste contemplados nas análises realizadas neste projeto.

A pasta `scripts` contém os códigos executados ao longo da apresentação do projeto. `complete_pres.m` consiste na apresentação completa. `questao1.m`,`questao2.m`, `questao3.m` e `questao4.m` consistem nas soluções das questões propostas em si. `select_menu.m` consiste no código do menu principal do projeto. `introd.m` consiste na apresentação inicial do projeto quando se tem uma apresentação completa.

A pasta `utils` contém códigos auxiliares.


Padrões de Código
-------------

Baseado nos [padrões do Octave](https://wiki.octave.org/Octave_style_guide)

**Tamanho máximo de linha**: 79 colunas.

**Indentação**: 2 espaços, sem tabs.

**Whitespaces**: Após nomes de funções, antes da abertura de parênteses.

**Comentários**: `#s`, não `%s`

**TODOs**: Comentários com as tags `FIXME:`

**Strings**: Strings devem estar no arquivo `strings.m`, e devem ser delimitadas por aspas duplas `"`