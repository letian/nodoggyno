# Cookbook : setavar

# #{node[:bar]} is set in attributes/default.rb
ENV['FOO'] = "#{node[:bar]}"

Chef::Log.info(">>>>> #{node[:bar]} <<<<<")

bash "Testing for ENV" do
  code <<-EOH
  echo $FOO >> /tmp/setavar.tmp
EOH
end

