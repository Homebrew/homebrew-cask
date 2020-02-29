cask 'textexpander' do
  version '6.5.3'
  sha256 'e828e50ac3f700b4c3af9f35e69996c70ce2fbfc28c54d10b10f7a21ff4ef023'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml"
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextExpander.app'

  zap trash: '~/Library/Application Support/TextExpander/'
end
