if platform?('debian', 'ubuntu')
  apt_repository 'oj' do
    uri "http://ppa.launchpad.net/wepupd8team/java/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "EEA14886"
  end
end
