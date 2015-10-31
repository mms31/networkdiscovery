class Ipaddress < ActiveRecord::Base
    def self.addIPandPing(ipaddress)
        #See if the IP address is pingable
        puts "Starting scan" + ipaddress
        
        #return success
    end
end
