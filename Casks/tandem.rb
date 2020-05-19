cask 'tandem' do
  version '1.5.5'
  sha256 'd0f8d91b755a241c8e196605c760e5f35e63bf0f4518c91c720fdef9dcb26ee2'

  # wisp-app.s3-accelerate.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://wisp-app.s3-accelerate.amazonaws.com/Tandem-#{version}-mac.zip"
  appcast 'https://wisp-app.s3-accelerate.amazonaws.com/latest-mac.yml'
  name 'Tandem'
  homepage 'https://tandem.chat/'

  app 'Tandem.app'
end
