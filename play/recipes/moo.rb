remote_file "/tmp/1.tgz" do
        source "http://ei3kf-chef.s3.amazonaws.com/1.tgz"
        owner "root"
        group "root"
        mode 0644
end

execute "S" do
 cwd "/tmp"
 command "tar -zpxf /tmp/1.tgz"
end

