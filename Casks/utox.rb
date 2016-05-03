cask 'utox' do
  version '0.8.1'
  sha256 '54060e95ef6ffb37cad6aee5dfa83c487d06b84b159dabb703e32c3960931b05'

  # github.com/GrayHatter/uTox was verified as official when first introduced to the cask
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/GrayHatter/uTox/releases.atom',
          checkpoint: '23224efe8b2246ef173745955e1cdc806e1f9dcf6703b33b74058aa0a0af84d3'
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
