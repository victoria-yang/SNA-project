## Data Wrangling

library(dplyr)
library(igraph)
D1<-read.csv("get.on.with.csv")
D2<-read.csv("best.friends.csv")
D3<-read.csv("work.with.csv")

E1<-unlist(select(D1,from,to))
E2<-unlist(select(D2,from,to))
E3<-unlist(select(D3,from,to))

## Visualize the Networks

g1<-graph(E1)
plot(simplify(g1), layout=layout.fruchterman.reingold)
title("Get On To")

g2<-graph(E2)
plot(simplify(g2), layout=layout.fruchterman.reingold)
title("Best Friends")

g3<-graph(E3)
plot(simplify(g3), layout=layout.fruchterman.reingold)
title("Work With")

## Centrality Measures
dgcent_got <- centr_degree(g1)
dgcent_bf <- centr_degree(g2)
dgcent_ww <- centr_degree(g3)

dgcent_got$res 
dgcent_bf$res 
dgcent_ww$res 

## Who in the class has the highest closeness centrality?
clcent_got <- closeness(g1, mode = "all")
clcent_bf <- closeness(g2, mode = "all")
clcent_ww <- closeness(g3, mode = "all")

clcent_got
clcent_bf
clcent_ww



