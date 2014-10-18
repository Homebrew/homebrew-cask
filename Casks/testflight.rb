class Testflight < Cask
  version '320' 
  sha256 '136e07ace22e132235816603a0907661786ed3dc74da4597e150ecacd3fe45a1' 

  url 'https://testflightapp.com/desktop/upgrade/46/' 
  appcast 'https://testflightapp.com/appcast.xml',
          :sha256 => 'a83cbdaafed7a635f71dfed9717e76f323a8f0c1f91deb3918e37d6d4dc88bdc'
  homepage 'http://testflightapp.com'
  license :unknown

  app 'TestFlight.app'
end
