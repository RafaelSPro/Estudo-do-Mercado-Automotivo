# Inteligência de Mercado e Predição de Depreciação Automotiva

<img width="2228" height="719" alt="image" src="https://github.com/user-attachments/assets/c24af076-daf0-4ae1-85c4-ca3635f8b2b7" />

---
### 📌 Sobre o Projeto

O mercado de revenda de veículos frequentemente utiliza métricas simplistas (como apenas o ano ou a quilometragem) para precificar ativos. Isso gera janelas de ineficiência: veículos sendo vendidos abaixo do valor de mercado por puro viés de quilometragem, ou estoques parados por falta de compreensão sobre quais opcionais (como transmissão) realmente retêm valor.

O Desafio: Identificar quais variáveis, além da quilometragem, são os verdadeiros "âncoras" de preço para otimizar a margem de lucro em operações de compra e venda.

---
### 🛠️ Stack Tecnológica

▪Banco de Dados: SQL Server (T-SQL)

▪Processamento & Visualização: Microsoft Excel e Power Point 

---

### 💻 Etapas do Desenvolvimento 

Abaixo, descrevo a lógica técnica aplicada em cada etapa do projeto:

1. Limpeza e Normalização de Dados
Para garantir a precisão dos cálculos, utilizei funções de conversão para tratar os dados de preço e quilometragem, além de formatação para o padrão monetário brasileiro.

Técnicas: TRY_CONVERT, DECIMAL(10,2), FORMAT.

2. Segmentação de Mercado (Bucketing)
Transformei a variável contínua de quilometragem em categorias discretas para facilitar a leitura gerencial e a criação de gráficos no Excel.

Categorias: Baixa KM (< 20k), Média KM (20k-60k) e Alta KM (> 60k).

3. Análise Multidimensional (Insights Extraídos)
Desenvolvi queries para cruzar diversas variáveis simultaneamente:

Ano vs. Motorização: Evolução dos preços ao longo do tempo correlacionada ao tamanho do motor.

Transmissão vs. Condição: Impacto da tecnologia (Automático/Manual) aliado ao estado de conservação.

  4.Identificação de Outliers: Localização de modelos que mantêm preço elevado mesmo com alta quilometragem. Após um diagnóstico foi confirmado que os carros com alta quilometragem tinham uma quantidade de amostragem maior, impactando em uma maior média de preço.

---
### 📈 Descobertas Principais (Insights de Negócio)

<img width="2241" height="508" alt="image" src="https://github.com/user-attachments/assets/f65473a4-4926-43c8-98b2-29baf3ffd1ed" />


---
Resiliência das Marcas Premium: Marcas de luxo como a BMW principalmente que possui 358 veículos sendo o modelo com média mais caro, e modelos com motorização superior (Engine Size) apresentam uma curva de depreciação muito mais suave. Em muitos casos, um veículo de luxo com "Alta KM" supera o valor de um popular "Baixa KM".

O Fator Transmissão: O mercado apresenta uma valorização acentuada para carros automáticos. A conveniência tecnológica atua como um "piso" de preço, protegendo o ativo contra a desvalorização por uso. Ficando claro que apenas nos carros novos os manuais tem um valor médio maior, muito provavelmente por venderem mais.

Matriz de Conservação: A condição do veículo (Condition) é um diferencial competitivo, mas a motorização robusta provou ser o maior preditor de retenção de valor a longo prazo.

### 🚀 Como Executar o Projeto
Importe o dataset.csv para o ambiente SQL Server.

Execute os scripts disponíveis na pasta /sql.

Os resultados das queries foram exportados para o arquivo Analise_Graficos.xlsx para visualização dos gráficos de bolhas e dispersão.
