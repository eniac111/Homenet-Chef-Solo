hostname = 'eniac-homenet'
DQDN = 'homenet.petrovs.info'

file '/etc/hostname' do
	content "#{hostname}\n"
end

file '/etc/hosts' do
	content "
	127.0.0.1       localhost\n
	127.0.1.1       #{DQDN}    #{hostname}\n
	"
end

##Install some base packages:

#Version Controls
package 'git'
package 'subversion'

#Development Tools
package 'build-essential'

#NTP:
package 'ntp'

#Utilities and some fun
package 'nano'
package 'iptraf'
package 'nmap'
package 'traceroute'
package 'tcpdump'
package 'cowsay'
package 'sl'

