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

	class FormBuilder
		attr_accessor :user

		def initialize(user)
			@user = user
		end

		def input(option={})
			HexletCode::Tag.build("input")
		end
	end

	def self.form_for(user, &block)

		form = FormBuilder.new(user)
		res =  block.call(form)

		"<form #{res}>"
	end




end

User = Struct.new(:name, :job)
user = User.new({name: "John", job: "home"})

p HexletCode::Tag.build('input',{:type => "text", :value => "name"})
func = HexletCode.form_for user do |f|
	f.input
end

p func
