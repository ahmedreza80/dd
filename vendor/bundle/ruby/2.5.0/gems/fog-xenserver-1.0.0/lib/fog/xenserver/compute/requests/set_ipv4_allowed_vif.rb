module Fog
  module XenServer
    class Compute
      class Real
        def set_ipv4_allowed_vif(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VIF.set_ipv4_allowed" }, ref, value)
        end
      end
    end
  end
end
