module HexletCode
	module Tag
		def self.build(tag_name, options={})
			init_arr = [tag_name]
			options_str = options.each do |key, value|
				init_arr << "#{key}=\"#{value}\""
			end
			"<#{init_arr.join(" ")}>"
		end
	end
end

User = Struct.new(:name, :job)
user = User.new(name: "John", job: "home" )

p HexletCode::Tag.build('input',{:type => "text", :value => "name"})
p user