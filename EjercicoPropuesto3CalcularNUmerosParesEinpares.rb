class Calcular
  def numero_par(numero)
    i=0
    resultado =0
    while i < numero.to_i
      if i%2 ==0
        resultado += i
      end
      i+=1
      end
      puts "La suma de los numeros pares de 15 es: "
      puts "#{resultado}"
  end
  def numero_impar(numero)
    i=0
    resultado = 0
    while i <numero.to_i
      if i%2 !=0 
         resultado+=i
      end
      i+=1
      end
      puts "La suma de los numeros impares de 15 es: "
      puts "#{resultado}"
    end
  end
resolver = Calcular.new
puts "Ingrese el numero maximo al sumar"
numero = gets.chomp
resolver.numero_par(numero)
resolver.numero_impar(numero)
