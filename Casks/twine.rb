cask 'twine' do
  version '2.3.8'
  sha256 '1b2298d4c7a6f3d3dac8844e0a4a6c4a9cecc731e00934ea6fa2296a7988aa9b'

  # github.com/klembot/twinejs/ was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
