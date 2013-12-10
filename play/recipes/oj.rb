if platform?('debian', 'ubuntu')
  execute "enable oj PPA" do
    command "add-apt-repository #{node[:oj][:ppa]} && apt-get update"
  end

  execute "Accept oj licence" do
    command "/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections;/bin/echo /usr/bin/debconf shared/accepted-oracle-license-v1-1 seen true | sudo /usr/bin/debconf-set-selections;"
  end

  execute "Install package" do
    command "apt-get -y install #{node[:oj][:pkgname]}"
  end

end
