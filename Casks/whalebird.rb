cask 'whalebird' do
  version '2.5.1'
  sha256 '28ab524b50631976b4a50d8e6a00ee8ec0ecd12c8acb99327f180d4c8501ad51'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
