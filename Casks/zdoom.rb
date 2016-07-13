cask 'zdoom' do
  version '2.8.1'
  sha256 '4143e6a484c670f26ce56ef758313c7ca18455368e825665023b14fa3b8ee934'

  url "http://zdoom.org/files/zdoom/#{version.major_minor}/zdoom-#{version}.dmg"
  name 'ZDoom'
  homepage 'http://zdoom.org/'
  license :oss

  app 'ZDoom.app'
end
