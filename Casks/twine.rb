cask 'twine' do
  version '2.3.5'
  sha256 '6230bccdc62c7fe844d511e47dcf30b49d490e307418fd0cc9426f578f68b9b8'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
