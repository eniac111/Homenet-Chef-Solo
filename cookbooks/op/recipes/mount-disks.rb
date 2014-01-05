#Install Acces Control Lists
package 'acl'

#Create mount points
directory '/mnt/stardisk'
directory '/mnt/disk500'
directory '/mnt/mp3disk'
directory '/mnt/contrast'
directory '/mnt/usbdisk'

mount '/mnt/stardisk' do 
	device 'a9cf36f9-7c47-4651-b825-870aa2285970'
	device_type :uuid
	fstype 'ext4'
	options 'acl,defaults'
end

mount '/mnt/disk500' do
	device 'bfc79fbf-486f-481a-9c62-3fe999a9c1a1'
	device_type :uuid
	fstype 'ext4'
	options 'defaults'
end

##Given to Stilyana
#mount '/mnt/mp3disk' do
#	device '67467d42-8ad1-4a22-9668-27fe0da0401b'
#	device_type :uuid
#	fstype 'ext4'
#	options 'defaults'
#end

mount '/mnt/usbdisk' do
	device '5def2dbf-8f25-4e50-bbc6-365c68dbeaa1'
	device_type :uuid
	fstype 'ext4'
	options 'defaults'