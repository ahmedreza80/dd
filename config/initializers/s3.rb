require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => " AKIAQZ6XZSKKWPB42XYQ",
      :aws_secret_access_key  => "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",
      :region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "theddbucket"
end