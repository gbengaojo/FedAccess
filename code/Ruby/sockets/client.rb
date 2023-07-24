require 'socket'

class Client
  def initialize(socket)
    @socket = socket
    @request_object = send_request
    @response_object = listen_response

    @request_object.join # will send the request to the server
    @response_object.join # will receive response from the server
  end

  def send_request

  end

  def listen_response

  end
end
