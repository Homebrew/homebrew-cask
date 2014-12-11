cask :v1 => 'whiteclock' do
  version '2.0'
  sha256 '9ad4a713dca77cfbca5bf4d8d1263126ec2b95fa588ad80be4f5a79140eefb6d'

  url "http://www.taimila.com/downloads/WhiteClock#{version.to_i}.zip"
  homepage 'http://www.taimila.com/?p=1221'
  license :unknown    # todo: improve this machine-generated value

  app 'WhiteClock.app'
end
