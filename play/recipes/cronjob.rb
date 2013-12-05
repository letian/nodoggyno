cron "staffequip_staging_tasks" do
hour "*"
minute "0,30"
weekday "*"
command "cd /srv/www/staffequip_staging/current && RAILS_ENV=staging bundle exec rake combined_tasks > /tmp/staffequip_staging_combined_tasks.log"
 end
