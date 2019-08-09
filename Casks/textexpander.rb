cask 'textexpander' do
  version '6.5.2'
  sha256 '219504e5b01d8c13e14d5a8b0faf20cf257d8d33900ef58659d08eedab3f7521'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
