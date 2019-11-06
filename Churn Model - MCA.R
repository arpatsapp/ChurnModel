# Analysis 
churn.mca <- MCA(churndata, ncp=4, graph=TRUE, quali.sup=19)
summary(churn.mca, nb.dec=2, ncp=2)
fviz_mca_var(churn.mca, repel=TRUE)
fviz_screeplot(churn.mca)


# Clustering
#churn.scaled <- scale(churndata[,-19])
#hc.cut <- hcut(iris.scaled, k = 3, hc_method = "complete")
#fviz_cluster("eclust", churndata, repel=TRUE)

heatmap(churndata)

split <- splitmix(within(churndata, rm('Churn')))

X1 <- split$X.quanti 

X2 <- split$X.quali

tree <- hclustvar(X.quanti = X1, X.quali = X2)

stability(tree, B=60) 

plot.new()
plot(tree)
groups <- cutree(tree, k=8)   # "k=" defines the number of clusters you are using   
rect.hclust(tree, k=8, border="red")

split2 <- splitmix(churndata)

X12 <- split2$X.quanti 

X22 <- split2$X.quali

tree2 <- hclustvar(X.quanti = X12, X.quali = X22)

stability(tree2, B=60) 

plot.new()
plot(tree2)
groups <- cutree(tree2, k=8)   # "k=" defines the number of clusters you are using   
rect.hclust(tree2, k=8, border="red")

