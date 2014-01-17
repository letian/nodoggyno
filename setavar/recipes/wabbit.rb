node[:deploy].each do |application, deploy|
 rabbitIP = node[:rabbitIP]
 file_dir = deploy[:deploy_to]

  execute "Configure RabbitIP" do
  command "echo \"<?php Configure::write('rabbitip', \'#{rabbitIP}\'); ?>\" > #{file_loc}/current/rabbitMQ.php"
                               end
end
