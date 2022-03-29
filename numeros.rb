# Números
# Escribir un programa llamado números.rb que reciba por línea de comandos la cantidad de
# líneas, y dibuje el siguiente patrón:
# Uso:
# ruby numeros.rb 5
# 1
# 12
# 123
# 1234
# 12345

# Declaramos la variable que recibirá la cantidad de lineas del patron
nbr = ARGV[0].to_i

# Primer ciclo que va a dibujar la columna principal
nbr.times do |i|
    val_base=0

    (i+1).times do |j|
        print val_base.next
        val_base= val_base.next
    end
  
    print "\n"
end