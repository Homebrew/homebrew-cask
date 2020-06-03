cask 'tandem' do
  version '1.5.9'
  sha256 'fab32f45b9d5d43d101650ef965d108604e7d37cad462e158759ef9eaee35ac1'

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast 'https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
