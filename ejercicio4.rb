

class Computer
    @@users = {}   
    @@tabla = Hash.new
    def initialize username, password
        @username = username
        @password = password
        @files = {}
    end

    def create(nombre)
      tiempo = Time.now
    	nombre = nombre+ ".txt"
    	if(@@tabla.has_key?(nombre))
        print "error\n"
      else
    		archivo = File.open(nombre, 'w') 
        @@tabla[nombre] =tiempo.strftime("%H:%M:%S")
        archivo.close
    	end	
    end

    def ls
        tabla = @@tabla
    		tabla.each {|key, value| puts "#{key} #{value}" }
    end

    def rm(nombre)
    	if(!@@tabla.has_key?(nombre))
        puts "Error no existe ese archivo" 
    	else
    		@@tabla.delete(nombre)
        File.delete(nombre)
    	end
    end
end