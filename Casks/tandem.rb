cask 'tandem' do
  version '1.5.8'
  sha256 'bc01cb61ba7ad40d350c7c2a04d4758f6f95a9f5d6ed27693ced994848212eaf'

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast 'https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
