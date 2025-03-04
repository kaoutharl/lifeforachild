alias mysql=/usr/local/mysql/bin/mysql
mysql -u root -e "create database if not exists life_for_a_child;"

mysql -u root life_for_a_child -e "CREATE USER 'dev'@'localhost' IDENTIFIED BY 'password';"
mysql -u root life_for_a_child -e "GRANT ALL PRIVILEGES ON *.* TO 'dev'@'localhost' WITH GRANT OPTION;"

mysql -u root life_for_a_child -e "source initialise/initialiseDB_schema.sql"
mysql -u root life_for_a_child -e "source updates/001_users.sql"
mysql -u root life_for_a_child -e "source updates/002_bmiage.sql"
mysql -u root life_for_a_child -e "source updates/003_statage.sql"
mysql -u root life_for_a_child -e "source updates/004_wtageinf.sql"
mysql -u root life_for_a_child -e "source updates/005_wtage.sql"
mysql -u root life_for_a_child -e "source updates/006_permissions.sql"
mysql -u root life_for_a_child -e "source updates/007_20100923_update.sql"
mysql -u root life_for_a_child -e "source updates/008_20110301_update.sql"
mysql -u root life_for_a_child -e "source updates/009_mark_deleted_false.sql"
mysql -u root life_for_a_child -e "source updates/010_sync_versions_tables.sql"
mysql -u root life_for_a_child -e "source updates/011_new_child_fields.sql"
mysql -u root life_for_a_child -e "source updates/012_new_report_fields.sql"
mysql -u root life_for_a_child -e "source updates/013_new_reviewed_field.sql"
mysql -u root life_for_a_child -e "source updates/014_messages.sql"
mysql -u root life_for_a_child -e "source updates/015_i18n.sql"
mysql -u root life_for_a_child -e "source updates/015_transcountrymanager.sql"
mysql -u root life_for_a_child -e "source updates/016_transcountrymanager.sql"
mysql -u root life_for_a_child -e "source updates/017_usergroupcodes.sql"
mysql -u root life_for_a_child -e "source updates/018_errorMessages.sql"
mysql -u root life_for_a_child -e "source updates/triggers.sql"









