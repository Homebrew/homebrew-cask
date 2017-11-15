cask 'textexpander' do
  version '6.2.4'
  sha256 '9cbd0455bc4f67f1240d80a78988c750943e70cf9e749c6dfb4c852a5828110b'

  # cdn.textexpander.com/mac was verified as official when first introduced to the cask
  url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
  appcast "https://smilesoftware.com/appcast/TextExpander#{version.major}.xml",
          checkpoint: 'c63a30d1119b5f61331a1de5038bfe1ee61fc72d32928d010d9f4998dede4c8c'
  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
