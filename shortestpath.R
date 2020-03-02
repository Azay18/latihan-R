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
#Shortest path tree
getShortestPathTree(nodes,
                    arcs,
                    algorithm = "Dijkstra",
                    directed = FALSE)