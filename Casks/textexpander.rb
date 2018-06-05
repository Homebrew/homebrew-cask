cask 'textexpander' do
  version '6.2.6'
  sha256 '9516038d25490a5c6e2529e0c81cc686d0bd1475504bbe21e46921bc0d51739e'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml",
          checkpoint: 'e7dfa96ec679e52bc5a23c69ddc0276987d0f6714de01ff98b62058958d8f878'
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
