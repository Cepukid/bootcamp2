def menghitung(a):
  angka=[]
  for b in a:
    z=0
    for c in a:
      if c!=b:
        z+=c
    angka.append(z)
  print("angka terkecil = "+str(min(angka)))
  print("angka terbesar = "+str(max(angka)))

menghitung([4,9,10,13,21])
