cask 'tap-forms' do
  version '5.3.12'
  sha256 '13e2cee42b0c851b36eb6a5b0427c730e9e591b720dc860e04731f20e23c1f36'

  # vendors.paddle.com/download/product/503174 was verified as official when first introduced to the cask. Developer uses paddle.com to process licences and payments for the software
  url 'https://vendors.paddle.com/download/product/503174'
  appcast "https://www.tapforms.com/app/tf-mac-#{version.major_minor}-sparkle-appcast.xml"
  name 'Tap Forms 5'
  homepage 'https://www.tapforms.com/'

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.tapzapp.tapforms-mac',
               '~/Library/Containers/com.tapzapp.tapforms-mac',
             ]
end
