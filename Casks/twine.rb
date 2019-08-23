cask 'twine' do
  version '2.3.3'
  sha256 'd8f397a843638bc19347a44f018901b9dca1705e1f6d58e4f484a7c01d38864e'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
