# Cookbook : bork bork bork

#something = node[:andy_app][:andy_var]

#ENV['SOME_VARIABLE'] = "#{something}"

template "/tmp/setphpvar.php" do
 source "setphpvar.erb"
 mode "0600"
end

execute "Run /tmp/setphpvar.php" do
 command '/usr/bin/php /tmp/setphpvar.php'
end

