


class LogOn 

  def enter(host_name)
    #while 
        puts "logon or exit?"
        input = gets.strip().downcase
        if input.include? "lon" 
          return "main_screen"
        elsif input.include? "exit"
          return "exit"
        end
    #end  
  end

end