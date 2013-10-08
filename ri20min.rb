class MegaGreeter
	attr_accessor :names
	
	#create the object
	def initialize(names = "World")
		@names = names
	end
	
	#say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			#names is a list of some kind
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end
	
	#say bye to everybody
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			#join the list elements with comma
			puts "Bye #{@names.join(", ")}! Come back soon!"
		else
			puts "Bye #{@names}!"
		end
	end
	
	if __FILE__ == $0
		mg = MegaGreeter.new
		mg.say_hi
		mg.say_bye
		
		#Change name to Zeke
		mg.names = "Zeke"
		mg.say_hi
		mg.say_bye
		
		#change names to list of names
		mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
		mg.say_hi
		mg.say_bye
		
		#change names to nil
		mg.names = nil
		mg.say_hi
		mg.say_bye
	end
end