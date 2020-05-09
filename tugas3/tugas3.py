def jajargenjang(z):
  n= z
  b= z
  a=1
  while a<= b:
    h=""
    for i in range (1,n+1):
      if i==1:
        h=h+(" " * (b-1)+"*")
      else : # selain itu cetak bintang saja
        h=h+"*"
    print(h)
    b=b-1
jajargenjang(10)
