Covariate Creation
===================
  
  could probably take this out....

```{r, echo=TRUE, cache=TRUE}
#do I need to make the classn column first?

M<-abs(cor(train[,8:ncol(train)-1]))
diag(M)<-0
which(M>0.8, arr.ind=T)
print(M)






featurePlot(x=train[,c("roll_belt","pitch_belt","yaw_belt")], y=train$classe,plot="pairs")

featurePlot(x=train[,c("roll_arm","pitch_arm", "yaw_arm")], y=train$classe,plot="pairs")

featurePlot(x=train[,c("roll_dumbbell","pitch_dumbbell", "yaw_dumbbell")], y=train$classe,plot="pairs")

featurePlot(x=train[,c("roll_forearm","pitch_forearm", "yaw_forearm")], y=train$classe,plot="pairs")
```