class User < ActiveRecord::Base
    has_secure_password
  
   # :password, :password_confirmation
  
end
