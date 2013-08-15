# add to deploy life-cycle event in opsworks, this recipe deploys a .htaccess when an application is deployed.

node[:deploy].each do |application, deploy|

template "#{deploy[:deploy_to]}/current/public/.htaccess" do
 source 'htaccess.erb'
 mode '0660'	
 owner deploy[:user]
 group deploy[:group]
 variables( :env => node[:custom_env])
	only_if do
     		File.directory?("#{deploy[:deploy_to]}/current/public")
    		end
                          				  end
		   end

