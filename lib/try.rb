

 module ClassMethods
    def who_am_i
      puts self
    end
  end

 module M
	include ClassMethods
  

  def speak_up(input)
    puts input.upcase
  end
 end


class C
  include M
  
end

c = C.new

puts c.speak_up("work")
puts "##"
puts c.who_am_i



=begin
User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new name: 'rob', job: 'hexlet', gender: 'm'

module HexletCode
	def self.form_for(user, &block)
		block.call(self)
	end

	def self.input(name, *arg)
		puts name
	end

end


HexletCode.form_for user do |f|
  # Проверяет есть ли значение внутри name
  f.input :name
  # Проверяет есть ли значение внутри job
  f.input :job, as: :text
end
=end
# Для удобства пример указан с переносами строк. Но реализовывать их необязательно
# <form action="#" method="post">
#   <input name="name" type="text" value="rob">
#   <textarea name="job" cols="20" rows="40">hexlet</textarea>
# </form>