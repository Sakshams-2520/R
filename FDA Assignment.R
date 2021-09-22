##A1
x=tolower(fm$MarketName)
unique(x)


##A2(a)
state=c()
for ( i in 0:nrow(fm)){
  state=c(state,fm$State[i])}

market=c()
for ( i in 0:nrow(fm)){
  market=c(market,fm$MarketName[i])}

market
dataFrame=data.frame(state,market)
dataFrame

##A2(b)
state=c()
market=c()
for(i in 1:nrow(fm)){
  if(fm$State[i]==fm$State[i]){
    state=c(state,fm$State[i])
    market=c(market,fm$MarketName[i])  }
}

dataFrame=data.frame(state,market)
dataFrame





##A2(c)
for (i in 1:nrow(fm)){ 
  
  vector1=c(vector1,fm$State[i])
}
x=unique(vector1)
x
X=rep(c(x),length.out=nrow(fm))
X
n=0
number=c()
for (u in 1:length(X)){n=0

for(i in 1:nrow(fm)){
  if(X[u]==fm$State[i]){
    n=n+1
    
  }
  
  
}

number=c(number,n)
}
number
Number_of_Markets=c(number[1:53])
Number_of_Markets
DataFrame=data.frame(x,Number_of_Markets)
DataFrame




##A3
fm$city[is.na(fm$city)] <- 0
sum(is.na(fm$city))
x=c()
vector1=c()
for (i in 1:nrow(fm)){ 
  if(fm$State[i]=="Massachusetts"){
    vector1=c(vector1,fm$city[i])
  }}
x=unique(vector1)
x
X=rep(c(x),length.out=nrow(fm))
X


N=0
numbers=c()
for (u in 1:length(X)){N=0

for(i in 1:nrow(fm)){
  if(X[u]==fm$city[i]){
    N=N+1
    
  }
  
  
}

numbers=c(numbers,N)
}

numbers

Number_of_Markets_per_city=c(numbers[1:length((x))])
Number_of_Markets_per_city
DataFrame=data.frame(x,Number_of_Markets_per_city)
DataFrame

DataFrame <- DataFrame[order(Number_of_Markets_per_city),descending=TRUE]
DataFrame

tail(DataFrame,5)





##A4
fm$Coffee[is.na(fm$Coffee)] <- 0
sum(is.na(fm$Coffee))
vector=c()
fm=na.exclude(fm)
fm


sum(is.na(fm$Coffee))
fm$Coffee[1]
for (i in 1:nrow(fm)){ 
  if(fm$Coffee[i]  == "Y"){
    vector=c(vector,fm$State[i])
  }}
vector
Output= table(vector)
