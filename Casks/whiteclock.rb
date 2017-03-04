cask 'whiteclock' do
  version '2.0'
  sha256 '9ad4a713dca77cfbca5bf4d8d1263126ec2b95fa588ad80be4f5a79140eefb6d'

  url "http://www.taimila.com/downloads/WhiteClock#{version.major}.zip"
  appcast 'http://www.taimila.com/blog/white-clock-for-osx/',
          checkpoint: 'a76b4b20f50e6e97ea0888312cd8e44479507a87c475806668dbb9f1987e4ee8'
  name 'White clock'
  homepage 'http://www.taimila.com/blog/white-clock-for-osx/'

  app 'WhiteClock.app'
end
