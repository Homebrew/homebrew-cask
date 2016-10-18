cask 'utox' do
  version '0.9.8'
  sha256 'a004c4bb1b01963fa910482bf6631a1f3a5c60ebf575259c168f5d95f38356eb'

  # github.com/uTox/uTox was verified as official when first introduced to the cask
  url "https://github.com/uTox/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/uTox/uTox/releases.atom',
          checkpoint: 'eee22a515c835b9a12c6dfc727a144227c27ec56d1b613a46362c8927b333a4a'
  name 'uTox'
  homepage 'https://www.tox.chat'

  app 'uTox.app'
end
