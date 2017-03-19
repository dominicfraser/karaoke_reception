


class LogOn 

  def enter(host_name)
    #while 
        puts "logon or exit?"
        input = gets.strip().downcase
        if input.include? "on" 
          return "main_screen"
        elsif input.include? "exit"
          return "exit"
        else
          return "log_on"
        end
    #end  
  end

end