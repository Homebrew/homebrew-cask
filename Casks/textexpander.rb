cask 'textexpander' do
  version '6.2.8'
  sha256 'd26ea1c5b82d0bd77686ac11a4ad38c81e4238d3be1c30f008b061e11289713d'

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
