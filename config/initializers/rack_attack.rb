class Rack::Attack

 Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

 # Allow all local traffic

 safelist('allow-localhost') do |req|

   '127.0.0.1' == req.ip || '::1' == req.ip

 end

 # Throttle login attempts by email address

#  throttle("/api/v1/contacts", limit: 1, period: 240.seconds) do |req|
#
#   if req.path == '/users/sign_in' && req.post?
#
#     req.params['email'].presence
#
#   end
# #
#  end

end
