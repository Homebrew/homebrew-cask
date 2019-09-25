cask 'tagspaces' do
  version '3.2.3'
  sha256 '5d661143d7831e12ec2ef454d83532da05fd3fc7e81f546e581ae12c38e74a1c'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{version}.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
