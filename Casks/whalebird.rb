cask 'whalebird' do
  version '4.0.2'
  sha256 'd8a3c3ef0fb24505db2fb0f35f979df55bd228bb8182517ca53a62dca99b4ec8'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
