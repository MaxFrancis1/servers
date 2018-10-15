require 'socket'

server = TCPServer.new(2345)

loop do
  
  socket = server.accept


  socket.puts "What do you say?"

  they_said = socket.gets.chomp

  if they_said == "quit"
    break
  end

  socket.puts "You said: #{they_said}. Goodbye!"

  
end
socket.close