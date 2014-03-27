
class Dessert
    def initialize(name, calories)
      @name = name
      @calories = calories
      @size = 0;
    end

    def set_name(string)
    	@name = string 
    end

    def get_name
    	return @name
    end

    def set_calories(string)
    	@calories = string 
    end

    def get_calories
    	return @calories
    end

    def set_size(string)
    	@size = string 
    end

    def get_size
    	return @size
    end

    def healthy?
      if(@calories>=200)
      	return false
      end
      return true
    end
    
    def delicious?
      return true
    end
    
    def to_s
    end
end

class JellyBean < Dessert
	@@contador=0;
    def initialize(name, calories, flavor)
      @name = name
      @calories = calories
      @flavor = flavor
      @@contador = contador + 1
    end

    def delicious?
      if(@flavor=="black licorice")
      	return false
      end
      return true;
    end

    def set_flavor(string)
    	@flavor = string 
    end

    def get_flavor
    	return @flavor
    end

    def count
		return @@count;
	end
end
