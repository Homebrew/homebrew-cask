cask 'textexpander' do
  version '6.5.4'
  sha256 'b4dc8f951902c17e09b549940d7f5f5913b6dbf7b154c807a4f0cc8d9b68ca7e'

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
