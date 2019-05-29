cask 'twine' do
  version '2.3.1'
  sha256 '361ef2ac1cc35c9c7d7547ca60b0c3163b3e428f25544ef77ed74b9875965cab'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
