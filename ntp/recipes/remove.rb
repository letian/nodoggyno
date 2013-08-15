service "ntpd" do
	action[:disable,:stop]
end

package "ntp" do
  action [:remove]
end

