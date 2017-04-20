cask 'twine' do
  version '2.1.1'
  sha256 '4aad95da8b4fc2d6bb961ea48baeb78fdf81dd5ef9f0e5e085c31fdb66bc79f3'

  # bitbucket.org/klembot/twinejs was verified as official when first introduced to the cask
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'nw/Twine/osx64/Twine.app'
end
