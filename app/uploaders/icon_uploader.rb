# encoding: utf-8

class IconUploader < CarrierWave::Uploader::Base
  storage :fog
end
