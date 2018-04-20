#puzzle 1: 1 to 9

perms<-combinat::permn(9)

solve_one<-function(){
  for (n in 1:length(perms)) {
    print(n)
    p<-perms[[n]]
    A1<-p[1]*p[2]-p[3]
    A2<-(p[4]-p[5])*3
    A3<-p[6]*p[7]+p[8]
    D1<-p[1]+p[4]-p[6]
    D2<-p[2]*p[5]+p[7]
    D3<-(p[3]+3)*p[8]
    
    if (A1 == 15 &
        A2 == 21 &
        A3 == 17 &
        D1 == 10 &
        D2 == 11 &
        D3 == 84) {
      print(paste("Answer at iteration",n))
      print(p[1:3])
      print(p[4:5])
      print(p[6:8])
      break
    }
  }
}
print(system.time(solve_one()))