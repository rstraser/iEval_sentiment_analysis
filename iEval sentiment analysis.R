### Sentiment analysis on iEvals in PDF form
### 12/19/2020

# tidy tools
library(tidyverse)
library(tidytext)
library(stopwords)
library(textdata)

# extracting PDFs
library(pdftools)

# visualizations
library(ggplot2)
library(viridis)
library(wordcloud)

# read in PDF
ieval = pdftools::pdf_text("iEval_Comments_concise.pdf") %>%
  readr::read_lines()

ieval %>% head()





# text cleaning and removing unnessessry 'whitespace'
iEval <- ieval %>% 
  str_squish() %>% 
  as_tibble() %>% 
  rename(text = 1)%>% 
  unnest_tokens(word, text) %>%
  anti_join(get_stopwords(), by = "word") %>%
  group_by(word) %>% count() %>% ungroup() %>% slice(-c(1:115)) %>%
  arrange(desc(n))

# remove unwanted words
eval <- iEval %>%
  filter(str_detect(word, "rob", negate = TRUE)) %>%
  filter(str_detect(word, "jeopardy", negate = TRUE)) %>%
  filter(str_detect(word, "confused", negate = TRUE))






### BING

bing_word_counts <- eval %>%
  inner_join(get_sentiments("bing")) %>%
  #count(word, sentiment, sort = TRUE) %>%
  ungroup()

bing_word_counts %>%
  group_by(sentiment) %>%
  slice_head(n = 15) %>%
  ungroup() %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(n, word, fill = sentiment)) +
  scale_fill_viridis_d() + 
  geom_col(show.legend = FALSE) +
  facet_wrap(~sentiment, scales = "free_y") +
  labs(x = "Contribution to sentiment (bing)",
       y = NULL) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "grey"))
  
  



#### AFINN

afinn = get_sentiments("afinn") #c("afinn", "bing", "loughran", "nrc")

eval.sentiments = eval %>% 
  inner_join(afinn, by = "word")







eval.sentiments  %>%
  filter(n > 2) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(x = word, y = n, fill = value)) +
  scale_fill_viridis(option = "D") + 
  geom_col(alpha = .8) +
  coord_flip() +
  labs(y = "Contribution to sentiment (afinn)")+
  theme(panel.background = element_blank(), panel.grid = element_blank(),
        legend.position = c(.75,.25))



ggplot(eval.sentiments, aes(value, log10(n)))+
  geom_point(aes(color = value)) +
  geom_jitter(aes(color = value)) +
  scale_color_viridis(option = "D") +
  geom_smooth(method=lm, color="black", size=0.5) +
  labs(x = "Sentiment value (afinn)") +
  labs(y = "Log(word count)") +
  theme_classic()
  



