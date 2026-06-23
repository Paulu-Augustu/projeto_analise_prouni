🗄️ Épico 1: SQL (Focado no banco prouni.sqlite)
Nesta fase, as regras de negócio e consultas estruturadas foram executadas diretamente na engine de banco de dados relacional SQLite, sem auxílio de bibliotecas externas.

•	Missão 1 (O JOIN e o MAX): Desenvolvimento de uma consulta estruturada cruzando as tabelas de cursos e endereços com base no identificador do campus. A lógica aplica um filtro posicional para isolar o curso com a mensalidade mais cara do país, extraindo o nome do curso, a universidade correspondente, o valor financeiro e o bairro exato onde o campus está localizado.

<img width="349" height="386" alt="image" src="https://github.com/user-attachments/assets/57c9096f-1b9b-4233-8933-914f3d77b203" />

<img width="1651" height="338" alt="image" src="https://github.com/user-attachments/assets/02a5b937-ebe9-4bc4-a542-f7f608874649" />



•	Missão 2 (Agrupamento Volumétrico): Construção de um agrupamento relacional focado no mapeamento de volumetria institucional. A análise identifica a instituição de ensino superior que possui a maior quantidade absoluta de turmas e cursos ativos cadastrados em toda a base de dados do ProUni.

<img width="334" height="235" alt="image" src="https://github.com/user-attachments/assets/cf201332-a2b7-42f9-9958-dd25b61c9db0" />
<img width="613" height="187" alt="image" src="https://github.com/user-attachments/assets/aafec5ef-461c-4821-ae6c-34490235718f" />




•	Missão 3 (Cálculos de Engenharia): Criação de uma projeção analítica contendo colunas calculadas. A query realiza a soma matemática vetorial das bolsas integrais de ampla concorrência e das bolsas reservadas para cotas, agrupando os resultados por estado e ordenando-os para evidenciar a distribuição regional de benefícios.

<img width="678" height="262" alt="image" src="https://github.com/user-attachments/assets/726b2236-ee75-4f0b-96a0-f44762741ee1" />
<img width="270" height="842" alt="image" src="https://github.com/user-attachments/assets/d2c03bf0-5551-4213-a320-9f9e688ade89" />



•	Missão 4 (Estatística Descritiva em SQL): Formulação de consultas para extrair o ranking dos 10 estados com maior oferta de bolsas e para simular a distribuição de frequências por faixas de preço (Histograma). Para contornar as limitações nativas do SQLite em funções matemáticas avançadas, foi empregada uma lógica de conversão de tipos de dados numéricos para criar agrupamentos perfeitamente divididos de mil em mil reais.

<img width="674" height="200" alt="image" src="https://github.com/user-attachments/assets/7414f86a-107b-49e6-932b-533cd1c8529f" />
<img width="250" height="335" alt="image" src="https://github.com/user-attachments/assets/31371e15-8068-4989-bb5c-4dd9a56d885b" />


🐍 Épico 2: Análise de Dados com Pandas (Focado nos arquivos .csv)
Fase de transição para o ecossistema Python, focando em manipulação matricial, tratamento estatístico de dados ausentes e geração de gráficos científicos.

•	Missão 1 (Merge e Higienização): Leitura automatizada e independente das tabelas brutas extraídas do Brasil.io utilizando funções nativas do Pandas, seguida pela consolidação relacional dos dados em um único Dataframe unificado. Realizou-se um tratamento rigoroso na coluna de notas de corte da ampla concorrência para isolar e higienizar os valores nulos, garantindo que a ausência de registros não gerasse distorções ou vieses estatísticos nas etapas posteriores.

<img width="1267" height="527" alt="image" src="https://github.com/user-attachments/assets/dfbbfc2a-2b8a-402a-9232-f8c1b28ebbd8" />


•	Missão 2 (Análise Visual e Estatística): Utilização da biblioteca Matplotlib para geração de gráficos estatísticos e identificação visual de padrões:
  o	Histograma de Mensalidades: Configurado com uma janela de corte para focar exclusivamente em valores de até cinco mil reais, otimizando a visualização da cauda longa do mercado privado de educação.

<img width="956" height="554" alt="image" src="https://github.com/user-attachments/assets/3b43079e-b047-4577-abd2-a87a696c7a9a" />
<img width="1186" height="684" alt="image" src="https://github.com/user-attachments/assets/42b981ef-619d-4471-8c25-739ee2017dc0" />

  
  o	Gráfico de Dispersão (Scatter Plot): Cruzamento das variáveis de mensalidade e nota de corte para analisar a correlação entre concorrência e preço. A aplicação de fatores de opacidade permitiu mitigar o efeito de sobreposição excessiva de pontos, evidenciando as nuvens reais de densidade e isolando o impacto visual dos registros que haviam sido distorcidos.

  <img width="864" height="364" alt="image" src="https://github.com/user-attachments/assets/4d209f12-4f2e-4558-932b-4f6f6e13a8b5" />
  <img width="1012" height="550" alt="image" src="https://github.com/user-attachments/assets/81c60422-6528-4848-a8bb-d1d5f566c49a" />

  
•	Missão 3 (Extração de Inteligência por Agrupamento): Aplicação de agregações multidimensionais para analisar o comportamento acadêmico das notas de corte. O Dataframe filtrado foi agrupado com base no grau de titulação das carreiras, calculando a média aritmética exata para as categorias de Licenciatura, Bacharelado e Tecnólogo, permitindo ranquear o nível de exigência de cada modalidade.

<img width="1277" height="497" alt="image" src="https://github.com/user-attachments/assets/e845f2ec-2eaa-447e-8bf6-aa62ec0a071d" />


📊 Principais Descobertas e Insights Econômicos

1.	Assimetria de Preços (A Faixa de Massa): As análises comprovaram que o ecossistema de ensino superior privado no ProUni está massivamente concentrado na primeira faixa de preço (abaixo de mil reais). Esta zona engloba a maior parte dos cursos disponíveis, impulsionada fortemente pelas modalidades de ensino à distância (EaD) e graduações tecnológicas.

2.	Cursos de Elite e Barreiras de Entrada: A pirâmide de preços se afunila drasticamente conforme o valor financeiro aumenta. Pouquíssimos cursos ultrapassam patamares elevados de mensalidade. Estes registros coincidem exatamente com as maiores notas de corte documentadas, evidenciando que carreiras de alto custo financeiro (como Medicina) impõem as maiores barreiras de desempenho acadêmico.

3.	Média de Nota de Corte por Grau: Os cursos com grau de Bacharelado lideram as exigências de nota para a concessão de bolsas integrais, seguidos pelas carreiras de Licenciatura e, por fim, pelas graduações de nível Tecnólogo.

4.	Concentração Geográfica: O mapeamento efetuado via SQL demonstrou que a região Sudeste (com destaque absoluto para os estados de São Paulo e Minas Gerais) centraliza o maior volume absoluto de bolsas de estudos financiadas pelo programa no território nacional.
