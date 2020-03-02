library("optrees")
nodes <- 1:5
arcs <- matrix(c(1,2,2,
                 1,3,2,
                 1,4,3,
                 2,5,5,
                 3,2,4,
                 3,5,3,
                 4,3,1,
                 4,5,0),
               ncol = 3, byrow = TRUE)

# Shortest Path Tree
getShortestPathTree(nodes,
                    arcs,
                    algorithm = "Dijkstra",
                    directed=FALSE)

#Contoh2
library("optrees")
nodes2 <- 1:7
arcs2 <- matrix(c(1,2,3,
                 1,3,9,
                 2,4,7,
                 2,5,1,
                 3,2,2,
                 3,4,7,
                 3,5,4,
                 4,6,2,
                 4,7,8,
                 5,4,5,
                 5,6,9,
                 6,7,4),
               ncol = 3, byrow = TRUE)

# Shortest Path Tree2
getShortestPathTree(nodes2,
                    arcs2,
                    algorithm = "Dijkstra",
                    directed=FALSE)
