cask 'textexpander' do
  version '6.2.5'
  sha256 'a3bca4a50993f60d9bffa901e90709bbccb64a6667b216ce45eaba191956149d'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml",
          checkpoint: '1e80f157eb7bac6e3f1ef14ea4ce09f79ecf34c751983458d3b69e64948c8560'
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
