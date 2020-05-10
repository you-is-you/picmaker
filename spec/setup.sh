# download cloud-datastore-emulator testing tool
wget -q https://storage.googleapis.com/gcd/tools/cloud-datastore-emulator-1.1.1.zip -O cloud-datastore-emulator.zip
unzip -o cloud-datastore-emulator.zip

# start cloud-datastore-emulator test server
cloud-datastore-emulator/cloud_datastore_emulator create gcd-test-dataset-directory
cloud-datastore-emulator/cloud_datastore_emulator start --testing ./gcd-test-dataset-directory/ &

# compile assets directory
RAILS_ENV=test bundle exec rake --rakefile=Rakefile assets:precompile
