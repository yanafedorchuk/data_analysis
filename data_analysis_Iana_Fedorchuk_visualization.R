#importing library for visualization
library(ggplot2) 

# if you want to run this code on your machine please change the file path

df <- rio::import('C:/Users/ianaf/Downloads/for_rel_graph.csv')

ggplot(data = df, aes(x = appointments,y = Population_clean))+
  geom_point()+
  geom_smooth()
#filtering appointments with 95 percent quantile
df_filtered <- df[df$appointments<= quantile(df$appointments, 0.95),]
#plotting again
ggplot(data = df_filtered, aes(x = appointments,y = Population_clean))+
  geom_point()+
  geom_smooth()
ggplot(data = df_filtered, aes(x = appointments,y = Population_clean))+
  geom_boxplot(aes(group=appointments))+
  geom_smooth()+
  scale_y_log10()+
  ylab("Population, log scale")

ggplot(data = df_filtered, aes(x = appointments,y = Population_clean))+
  geom_boxplot(aes(group=appointments))+
  geom_smooth()+
  scale_y_log10()+
  ylab("Population, log scale")+
  facet_wrap(vars(year_group))
# on all the graphs the relationship is barely visible