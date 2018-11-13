require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAICRJACV5KA3MG7YA",
      :aws_secret_access_key  => "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",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "theddbucket"
end