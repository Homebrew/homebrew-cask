class Testflight < Cask
  version '1.0_beta313'
  sha256 'a8f643b66682f7ec9d710b7452dd9fdc9332edc59bc2c92d10683635c80c861f'

  url 'https://d193ln56du8muy.cloudfront.net/desktop_app/1381509820/TestFlight-Desktop-1.0-Beta(313).zip'
  appcast 'https://testflightapp.com/appcast.xml'
  homepage 'http://testflightapp.com'

  app 'TestFlight.app'
end
