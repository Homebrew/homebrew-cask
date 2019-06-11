cask 'twine' do
  version '2.3.2'
  sha256 '919711c53b9563dad7dbfe704a24beaeecf8d2e6d7bd766c0ea9eb8f9b743771'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
