pkg = c('magrittr', 'quantmod', 'rvest', 'httr', 'jsonlite',
        'readr', 'readxl', 'stringr', 'lubridate', 'dplyr',
        'tidyr', 'ggplot2', 'corrplot', 'dygraphs',
        'highcharter', 'plotly', 'PerformanceAnalytics',
        'nloptr', 'quadprog', 'RiskPortfolios', 'cccp',
        'timetk', 'broom', 'stargazer', 'timeSeries')

new.pkg = pkg[!(pkg %in% installed.packages()[, "Package"])]
if (length(new.pkg)) {
  install.packages(new.pkg, dependencies = TRUE)}

url.aapl = "https://www.quandl.com/api/v3/datasets/WIKI/AAPL/data.csv?api_key=xw3NU3xLUZ7vZgrz5QnG"
data.aapl = read.csv(url.aapl)

head(data.aapl)

library(quantmod)
getSymbols('AAPL')
head(AAPL)

data = getSymbols('AAPL',
                  from = '2000-01-01', to = '2020-12-09',
                  auto.assign = FALSE)
head(data)

chart_Series(Ad(AAPL))

getSymbols('005930.KS',
           from = '2000-01-01', to = '2020-12-09')
tail(Ad(`005930.KS`))
tail(Cl(`005930.KS`))

getSymbols("068760.KQ",
           from = '2000-01-01', to = '2018-12-09')
tail(Cl(`068760.KQ`))

getSymbols('DGS10', src='FRED')
chart_Series(DGS10)

getSymbols('DEXKOUS', src='FRED')
tail(DEXKOUS)

library(rvest)
library(httr)

url = 'https://finance.naver.com/news/news_list.nhn?mode=LSS2D&section_id=101&section_id2=258'
data = GET(url)

print(data)

data_title = data %>%
  read_html(encoding = 'EUC-KR') %>%
  html_nodes('dl') %>%
  html_nodes('.articleSubject') %>%
  html_nodes('a') %>%
  html_attr('title')

print(data_title)


Sys.setlocale("LC_ALL", "English")

url = 'https://kind.krx.co.kr/disclosure/todaydisclosure.do'
data = POST(url, body = 
              list(
                method = 'searchTodayDisclosureSub',
                currentPageSize = '15',
                pageIndex = '1',
                orderMode = '0',
                orderStat = 'D',
                forward = 'todaydisclosure_sub',
                chose = 'S',
                todayFlag = 'Y',
                selDate = '2020-12-09'
              ))

data = read_html(data) %>%
  html_table(fill = TRUE) %>%
  .[[1]]

Sys.setlocale("LC_ALL", "Korean")

print(head(data))









