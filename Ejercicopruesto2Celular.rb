lass DatosUsuario
  def inicializar
    @nombres = []
    @celulares= []
    cargar_informacion
  end
  def cargar_informacion
    user = {
      nombre: "Maria,Pedro,Juan,Alberto",
      celular: "2248-6559,9845-6532,8265-4536,7896-4514"
    }

    
    @nombres = user[:nombre].split(',')
    @celulares = user[:celular].split(',')
  end

  def mostrar
      puts "Nombre".ljust(20) + "Celular"

      @nombres.each_with_index do |nombre, index|
        puts "#{nombre.ljust(20)}#{@celulares[index]}"
      end
  end
  def buscar_numero(nombre)
      nombre1 = nombre.capitalize
      
      indice = @nombres.index(nombre1)

      if indice
        puts "El Numero de telefono de #{nombre}: #{@celulares[indice]}"
        puts"\n"
      else 
        puts "\nEl Numero no se encuentra"
    end
  end
    
end
datos_usuarios = DatosUsuario.new
datos_usuarios.inicializar
loop do
  datos_usuarios.mostrar
  puts "Ingrese un nombre (o presione Enter para salir):"
  nombre = gets.chomp

  break if nombre.empty? 

  datos_usuarios.buscar_numero(nombre)
end