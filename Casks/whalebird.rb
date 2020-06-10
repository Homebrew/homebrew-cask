cask 'whalebird' do
  version '4.1.2'
  sha256 '4c3aee3b186b57ac7ffea1b6a42be8e2a7264715d1ce2afbd22a6dcc0a3881cf'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
