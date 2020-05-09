def hitung(s):
  index=[]
  hasil=[]
  for i,a in enumerate(s+'A'):
    if a.isupper():
      index.append(i)
  a=0
  for i in index:
    hasil.append(s[a:i])
    a=i
  print(len(hasil))
  print("terdiri dari")
  print(hasil)
hitung('mamaMakanPepayaWaktuBuka')
