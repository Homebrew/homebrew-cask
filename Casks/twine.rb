cask 'twine' do
  version '2.3.7'
  sha256 '71000cf6f4d51cb37d22f261a518bb3a3b8813562b898b23da401c1ebb2f27ae'

  # github.com/klembot/twinejs/ was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
