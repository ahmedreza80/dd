require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJPO46MHDNTXBLZ2A",
      :aws_secret_access_key  => "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",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "theddbucket"
end