cask 'twine' do
  version '2.3.0'
  sha256 '11c8b82fc16ae175fdcea650e401cadaf2ac24815722b20aea0029eb4cf04297'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
