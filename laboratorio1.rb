module Laboratorio1
def Laboratorio1.palindrome?(palabra)
 palabra = palabra.downcase.scan(/\w/)
 largo = palabra.length
 derecho = palabra[0, 1]
 1.upto(largo-1) do |i|
  derecho = derecho << palabra[i, 1]
 end
 largo = largo -1
 reves = palabra[largo, 1]
 largo = largo -1
 largo.downto(0) do |i|
  reves = reves << palabra[i, 1]
 end
 derecho == reves
end

	def Laboratorio1.cuenta_palabras(cadena)
		 split = cadena.split(/\W/)
     tabla = Hash.new
     numero=0;
     (split.length).times do |k|
      numero =0
      (split.length).times do |w|
        if(split[k]!=split[w])
        else
          numero = numero +1
        end
      end
      tabla[split[k]] = numero
    end
    return tabla
	end

	
	def Laboratorio1.hanoi(numero,origen,destino,media)
		if(numero==1)
			print "#{origen}-->#{destino}\n"
		else
			hanoi(numero-1,origen,media,destino)
			print "#{origen}-->#{destino}\n"
			hanoi(numero-1,media,destino,origen)

		end
	end

	def Laboratorio1.sort(array,orden)
	if(orden)
    (array.length-1).times do |i|
      ( array.length- i- 1).times do |d|
         if (array[d] > array[d+1]) 
          swap       = array[d]
          array[d]   = array[d+1]
          array[d+1] = swap
        end
      end
    end
  else 
  (array.length-1).times do |i|
      ( array.length- i- 1).times do |d|
         if (array[d] < array[d+1]) 
          swap       = array[d]
          array[d]   = array[d+1]
          array[d+1] = swap
        end
      end
    end
  end
    	return array	
	end


	def Laboratorio1.char_count(cadena,c)
		contador = 0;
		(cadena.length).times do |i|
			if(cadena[i]==c)
				contador +=1
			end
		end
		return contador
	end

	def Laboratorio1.atoi(cadena)
	  return cadena.to_i
  end	

end







