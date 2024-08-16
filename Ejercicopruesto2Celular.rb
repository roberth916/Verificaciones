class DatosUsuario
  def initialize
    @nombres = []
    @celulares = []
    cargar_informacion
  end

  def cargar_informacion
    datos = {
      nombres: "Maria,Pedro,Juan,Alberto",
      celulares: "2248-6559,9845-6532,8265-4536,7896-4514"
    }

    @nombres = datos[:nombres].split(',')
    @celulares = datos[:celulares].split(',')
  end

  def mostrar
    puts "Nombre".ljust(20) + "Celular"
    @nombres.each_with_index do |nombre, index|
      puts "#{nombre.ljust(20)}#{@celulares[index]}"
    end
  end

  def buscar_numero(nombre)
    nombre = nombre.capitalize
    indice = @nombres.index(nombre)

    if indice
      puts "El número de teléfono de #{nombre} es: #{@celulares[indice]}"
    else
      puts "El número no se encuentra"
    end
  end
end

def ejecutar_programa
  datos_usuarios = DatosUsuario.new

  loop do
    datos_usuarios.mostrar
    puts "Ingrese un nombre (o presione Enter para salir):"
    nombre = gets.chomp

    break if nombre.empty?

    datos_usuarios.buscar_numero(nombre)
  end
end