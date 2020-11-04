ventas = {
  Enero: 15000,
  Febrero: 22000,
  Marzo: 12000,
  Abril: 17000,
  Mayo: 81000,
  Junio: 13000,
  Julio: 21000,
  Agosto: 41200,
  Septiembre: 25000,
  Octubre: 21500,
  Noviembre: 91000,
  Diciembre: 21000
}
trimestres=['Q1','Q2','Q3','Q4']
prices=[]
#generamos solamente los valores del hash de 3 en 3 con each.slice
ventas.each_slice(3) do |elements|
  prices.push elements.to_h.values
end
#sumamos cada arreglo
arr=[]
prices.each do |i|
  arr.push i.sum
end

print final_hash=trimestres.zip(arr).to_h
