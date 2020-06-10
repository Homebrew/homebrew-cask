cask 'tandem' do
  version '1.5.11'
  sha256 '7b89f35377d0166ce5fe522e9861b076e531096b5d02d5adab581b3e6305516a'

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast 'https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
