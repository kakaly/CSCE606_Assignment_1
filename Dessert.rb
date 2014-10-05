#!/usr/bin/ruby

class Dessert
	attr_accessor :name
	attr_accessor :calories

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		if calories < 200
			return true
		end
		return false
	end

	def delicious?
		return true 
	end
end

class JellyBean < Dessert
	attr_accessor :flavor
	def initialize(name, calories, flavor)
		@flavor = flavor
	end

	def delicious?
		if flavor == "black licorice"
			return false
		end
		return true
	end
end

if __FILE__ == $0

	d = Dessert.new("jelly",300)
	j = JellyBean.new("jelly",300,"black licorice")
	puts d.healthy?
	puts d.delicious?
end
