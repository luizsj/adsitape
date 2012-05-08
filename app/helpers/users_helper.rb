module UsersHelper
  
    
  def facebook_acessivel?
      if Rails.env.production?
        begin
          Timeout.timeout(5) do 
            s = TCPSocket.new('www.facebook.com', 'echo')
            s.close
            return true
          end
          rescue Errno::ECONNREFUSED
            return true
          rescue Timeout::Error
            return false
        end
      else 
         true
      end
  end
  
end
