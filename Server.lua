require('socket');

port = 445;

server = socket.bind('*', port);
io.write("Menunggu pada port "..port.."\n");
cnx = server:accept();
io.write("Connection made: ")
while true do
	msg = cnx:receive();
	io.write(msg .. "\n");
	io.write("Jawapan anda : ");
	cnx:send(io.read() .. "\n");
end
io.read();
