PROJECT=viroonga
VERSION=v1

# Start cloud proxy
# cloud_sql_proxy -instances=cloud-ninjaio:us-central1:cloud-ninja=tcp:3306 -credential_file=keys/cloud-ninjaio-113e76944ae4.json
# connect via mysql client
#

run:
	dev_appserver.py app.yaml

deploy:
	gcloud app deploy --version $(VERSION) --project $(PROJECT)
