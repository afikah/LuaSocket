require('socket')

io.write("Choose a server > ");
server = io.read();
io.write("Choose a port > ");
port = io.read();
client = socket.connect(server, port);
if client then
	io.write("SUCCESS !! \n");
	while true do
		io.write("Hantar pesanan :");
		client:send(io.read().."\n");
		reply = client:receive();
		io.write(reply .. "\n");
	end
end
