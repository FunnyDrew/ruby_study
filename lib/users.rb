class User 
	attr_accessor :name, :second_name, :year
	def initialize (name, second_name, year)
		@name = name
		@second_name = second_name
		@year = year
	end

	def full_name
		"#{name} #{second_name}"
	end
end

class Group
	attr_reader :users
	def initialize(*users)
		@users = users
	end

	def each(&block)
		users.each{|user| block.call(user)}
	end
end

user1 = User.new('Tom', 'Tailor', '1977')

user2 = User.new('Sed', 'Botiany', '1970')

user3 = User.new('Robert', 'Lee', '1971')

group1 = Group.new(user1, user2, user3)

group1.each do |user|
	puts user.full_name
	years_old = Time.now.year - user.year.to_i
	puts "is #{years_old} years old"
end
