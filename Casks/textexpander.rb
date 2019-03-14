cask 'textexpander' do
  version '6.5'
  sha256 '3eff50977d81e85d805883b7dd75d52450d705c66d572e96f192204931820086'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
