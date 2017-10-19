cask 'textexpander' do
  version '6.2.3'
  sha256 '76ed5c10c970dcda5ee2b7b70bd4961d2db88812874457aaf9cb8b28417c10e5'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml",
          checkpoint: '4225f92d3c5586165e76e69b35f5a4d70d0ff9e730be90bacfb5cb03bbc563a9'
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
