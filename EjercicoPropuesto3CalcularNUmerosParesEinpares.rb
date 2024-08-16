class Calcular
  def initialize(numero)
    @numero = numero.to_i
  end

  def suma_pares
    resultado = (0...@numero).select { |i| i.even? }.sum
    puts "La suma de los números pares hasta #{@numero} es: #{resultado}"
  end

  def suma_impares
    resultado = (0...@numero).select { |i| i.odd? }.sum
    puts "La suma de los números impares hasta #{@numero} es: #{resultado}"
  end
end

def obtener_numero
  puts "Ingrese el número máximo para sumar:"
  gets.chomp
end

numero = obtener_numero
calcular = Calcular.new(numero)
calcular.suma_pares
calcular.suma_impares