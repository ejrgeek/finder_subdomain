# Finder SubDomain
require 'uri'
require 'net/http'

banner = <<BANNER
                              
        %%%%%%%%%%%%%%%       
     %%%%%%%%%%%%%%%%%%%%%    
   %%%%%%%           %%%%%%%  
  %%%%%%   (((((((((   %%%%%% 
 %%%%%   (((((((((((((  
 %%%%%   (((((((((((((  by @ejrgeek
 %%%%%   (((((((((((((   
  %%%%%   ((((((((((.   %%%%% 
   %%%%%%            ,%%%%%%  
     %%%%%%%%%%%%%%%%%%%%%    
      \\\\%%%%%%%%%%%%%%%//  
BANNER

puts(banner)

print("Digite o dominio > ")
domain = gets.chomp

for num_list in 1..2 do
  filename = "Subdomain#{num_list}.txt"
#
  File.open(filename, 'r') do |file|
  ##
    while subdomain = file.gets
    ###
        begin
        ####
          subd = subdomain.strip
          search = "https://#{subd}.#{domain}"
          uri = URI.parse(search)
          
          res = Net::HTTP.get_response(uri)
  
          puts "[+] Encontrado: #{search} : code #{res.code}"
  
          print("\nDeseja Continuar (s/n) ?")
          opt = gets.chomp
          if opt == "s"
            print("")
          else
            exit(0)
          end
  
        rescue
          puts "[x] #{uri} não existe."
        ensure
        ####
        end
    ###     
    end
  ##
  end
#
end