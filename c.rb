=begin
When you override a method, the new version takes precedence
=end

class C
  def m
    puts "First definition of method m"
  end

  def m
    puts "Second definition of method m"
  end
end

C.new.m