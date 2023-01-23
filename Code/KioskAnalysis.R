bike = copy(Ch5_bike_station_locations)
setDT(bike)
str(bike)

#To check for NAs
grep('NA', bike)

#Plot of all locations
ggplot(bike ,aes(x=longitude ,y=latitude)) + geom_point()

#Seed is set to keep the same random sampling
set.seed(123)
k3=kmeans(bike ,3)
k3

bike[,clus3:=k3$cluster]
ggplot(bike ,aes(x=longitude ,y=latitude ,color=clus3)) +geom_point()

bike[,clus3:= factor(clus3)]
ggplot(bike ,aes(x=longitude ,y=latitude ,color=clus3)) + geom_point()
