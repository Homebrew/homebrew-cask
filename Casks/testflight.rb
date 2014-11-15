cask :v1 => 'testflight' do
  version '1.0_beta313'
  sha256 'a8f643b66682f7ec9d710b7452dd9fdc9332edc59bc2c92d10683635c80c861f'

  url 'https://d193ln56du8muy.cloudfront.net/desktop_app/1381509820/TestFlight-Desktop-1.0-Beta(313).zip'
  appcast 'https://testflightapp.com/appcast.xml',
          :sha256 => 'a83cbdaafed7a635f71dfed9717e76f323a8f0c1f91deb3918e37d6d4dc88bdc'
  homepage 'http://testflightapp.com'
  license :unknown

  app 'TestFlight.app'
end
