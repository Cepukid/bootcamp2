def count_handshake(jumlah):
  t=0
  for x in range(jumlah-1):
    t+=x+1
  return t

print(count_handshake(4))
print(count_handshake(7))

