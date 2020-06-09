cask 'tap-forms' do
  version '5.3.11'
  sha256 '4dd6383a90108a754914819ee0452ac53c05ead7b004a38e8bf243ca956bb0a7'

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
