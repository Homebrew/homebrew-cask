cask :v1 => 'textbar' do
  version '1.7.25'
  sha256 'dcf52746613b9b64a4c7f1479abef4a9614e421f955836b3a713990192470905'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          :sha256 => '74b30373123f174f0cd5a850200180e539d3f661e8e173123df8ac0287d3f660'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :x86_64

  app 'TextBar.app'
end
