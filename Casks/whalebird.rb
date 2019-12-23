cask 'whalebird' do
  version '3.0.1'
  sha256 'dffde3ccb08c1f3ae870f643e71b89be0f4191be6f6dcd6ffe85f0091b2989fb'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
