cask 'whalebird' do
  version '2.1.1'
  sha256 'd12d2887f3e8e23d7be82d2cefd550b6fb9a2b1c14ded4f6572be36d6a2e048f'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
