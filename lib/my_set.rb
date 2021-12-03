class MySet
    attr_reader :hash
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(key)
        hash.has_key?(key)
    end 

    def add(value)
        hash[value] = true
        self
    end

    def delete(value)
        hash.delete(value)
        self
    end

    def size
        hash.size
    end

    def self.[](*args)
        new(args)
    end

    def clear 
        hash = {}
    end
end
