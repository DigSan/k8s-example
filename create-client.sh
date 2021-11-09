#get token
RESULT=`curl --data "username=<your_admin_user>&password=<your_passwod>&grant_type=password&client_id=admin-cli" http://localhost:8090/auth/realms/master/protocol/openid-connect/token
TOKEN=`echo $RESULT | sed 's/.*access_token":"//g' | sed 's/".*//g'`
#create user
curl -X POST -d '{ "clientId": "myclient" }' -H "Content-Type:application/json" -H "Authorization: bearer ${TOKEN}" http://localhost:8090/auth/realms/master/clients-registrations/default