# Finder SubDomain
require 'net/http'
require 'uri'
require 'resolv'

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

print("Digite o host > ")
domain = gets.chomp


subdomains = []

res = Resolv::DNS.new

res.each_resource(domain, Resolv::DNS::Resource::IN::NS) do | rescr|

  subdomains << rescr.name.to_s

end

if subdomains.any?
  puts "Subdominios encontrados"
  puts subdomains
else
  puts "Nenhum subdominio encontrado"
end