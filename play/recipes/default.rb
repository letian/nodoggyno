# Cookbook : ei3kf testing stuff

name = "Andy"

codename = node[:lsb][:codename]

#log "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX #{name} XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#log "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX #{codename} XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
#log "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX #{node[:lsb][:codename]} XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

##### log the distro codename if it equals precise.

#case node[:lsb][:codename]
case #{codename}
when 'precise'
        log ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #{node[:lsb][:codename]} <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
        puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> #{node[:lsb][:codename]} <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
end

