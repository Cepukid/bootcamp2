def hurufh(a):
  if a%2==1:
    string = ""
    for i in range(a):
      for f in range(a):
        if i==a/2-0.5:
          string=string+"*\t"
        else:
          if f==0 or f==a-1:
            string=string+"*\t"
          else:
            string=string+"=\t"
      string=string+("\n")
    print(string)
  else:
    print("harus angka ganjil")
hurufh(a)
