class Ipaddress < ActiveRecord::Base
    def self.addIPandPing(ipaddress)
        #See if the IP address is pingable
        puts "Starting scan" + ipaddress
        check = Net::Ping::External.new(ipaddress)
        puts check.ping
        #return success
    end
end
