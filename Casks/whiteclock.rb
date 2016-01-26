cask 'whiteclock' do
  version '2.0'
  sha256 '9ad4a713dca77cfbca5bf4d8d1263126ec2b95fa588ad80be4f5a79140eefb6d'

  url "http://www.taimila.com/downloads/WhiteClock#{version.to_i}.zip"
  name 'White clock'
  homepage 'http://www.taimila.com/blog/white-clock-for-osx/'
  license :gratis

  app 'WhiteClock.app'
end
