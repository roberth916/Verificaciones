def validar_correo(correo)
  regex = //A[\w+\-]+@[a-z\d\-]+\.[a-z]+\z/i
  if correo.match? (regex)
  puts "Correo válido"
  else
  puts "Correo inválido"
  end
  end
  Ejemplo de uso
  validar_correo("ejemplo@dominio.com") # Correo válido
  validar_correo("mal.123@algo.com")
  