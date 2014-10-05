#!/usr/bin/env ruby

class Palindrome
	attr_accessor :word
	def initialize(word)
		@word = word
	end

	def palindrome
		String mod1 = word.gsub(/[^\w]/,"").downcase()
		String mod2 = mod1.reverse()
		if mod1 == mod2
			puts true
		else
			puts false
		end
	end

	def count_words
		word_count = Hash.new(0)
		word.downcase.scan(/\w+/) do |w|
			word_count[w] += 1
		end
		puts word_count
	end
end

if __FILE__ == $0
	ARGV.each do |a|
		p = Palindrome.new(a)
		p.palindrome
		p.count_words
	end
end
