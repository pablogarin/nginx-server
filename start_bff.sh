docker run -d -p80:80 --name nginx-server nginx-server
docker run -d --network="container:nginx-server" --name front pablogarin/pablogarin-front
docker run -d --network="container:nginx-server" -e "MONGODB_CONNECTION_STRING=mongodb+srv://admin:EONDKZcAf2dlK1LL@pablogarinmongocluster.uuh34.mongodb.net/pablogarindev?retryWrites=true&w=majority" --name bff pablogarin/pablogarin-bff
