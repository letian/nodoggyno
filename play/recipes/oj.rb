if platform?('debian', 'ubuntu')
  execute "enable oj PPA" do
    command "add-apt-repository http://ppa.launchpad.net/webupd8team/java/ubuntu && apt-get update"
  end
end
