# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show.
#  Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key.
#   It's up to you to check whether a key currently exists!

class Map
    attr_accessor :map

    def initialize
        @map = []
    end

    def get(key)
        map.each do |ele|
            if ele[0] == key
                return true
            end
        end
        false
    end

    def set(key,value)
       if get(key)

       else
        map << [key, value]
        
        @map.each do |ele|
            if ele[0].include?(key)
                ele[1] = value
            
            end
        end
        @map
    end



end
