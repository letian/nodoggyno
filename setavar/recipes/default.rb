# Cookbook : setavar

# #{node[:een][:twee]} is set in attributes/default.rb
ENV['FOO'] = "#{node[:bar]}"

Chef::Log.info(">>>>> #{node[:bar]} <<<<<")

