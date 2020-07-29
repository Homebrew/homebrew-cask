cask 'tandem' do
  version '1.5.13'
  sha256 '05c1ca19b263dbcd8251f6f4eae77a5ef637d9b188bfd1c97cf3a2ef7bdf14ba'

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast 'https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
