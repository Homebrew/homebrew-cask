cask 'twine' do
  version '2.1.0b5'
  sha256 '355b2ef4ecf82ff5e696f3b7337e9d8939d0625b5e35c0a9a2889f98d25cd435'

  # bitbucket.org/klembot/twinejs was verified as official when first introduced to the cask
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'nw/Twine/osx64/Twine.app'
end
