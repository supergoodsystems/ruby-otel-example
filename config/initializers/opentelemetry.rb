require 'supergood'
Supergood.init({client_id: 'local-client-id', client_secret: 'local-client-secret'})

require 'opentelemetry/sdk'
require 'opentelemetry/instrumentation/all'
OpenTelemetry::SDK.configure do |c|
  c.service_name = 'dice-ruby'
  c.use_all()
end

