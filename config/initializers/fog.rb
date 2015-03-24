CarrierWave.configure do |config|
  config.fog_credentials = {provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
	host: Rails.application.secrets.aws_host_name}
  config.fog_directory  = Rails.application.secrets.aws_directory
end