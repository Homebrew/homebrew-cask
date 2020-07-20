cask 'tap-forms' do
  version '5.3.12'
  sha256 '4fb3edc3006d52f98e2ecdd148b8e9e6e52dd19dda1183f6da051dcefa53fcaa'

  # vendors.paddle.com/download/product/503174 was verified as official when first introduced to the cask. Developer uses paddle.com to process licences and payments for the software
  url 'https://vendors.paddle.com/download/product/503174'
  appcast "https://www.tapforms.com/app/tf-mac-#{version.major}.1-sparkle-appcast.xml"
  name 'Tap Forms 5'
  homepage 'https://www.tapforms.com/'

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.tapzapp.tapforms-mac',
               '~/Library/Containers/com.tapzapp.tapforms-mac',
             ]
end
