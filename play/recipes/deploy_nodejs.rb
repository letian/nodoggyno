node[:deploy].each do |application, deploy|
#    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>    #{application}"
#    puts ">>>>>>>>>>>>>>>>>>>>>>>>>    #{deploy[:deploy_to]}"
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>    /etc/init.d/nodejs-#{application}"

    template "/etc/init.d/nodejs-#{application}" do
    mode "0755"
    source 'nodejs.erb'
    end
end

