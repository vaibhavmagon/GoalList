ActionMailer::Base.delivery_method = :smtp  
ActionMailer::Base.smtp_settings = {  
    :address => "mail.goalist.in",  
    :port => 25,  
    :domain => "www.goalist.in",  
    :authentication => :login,  
    :user_name => "user@goalist.in",  
    :password => "secret"  
}  