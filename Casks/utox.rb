cask 'utox' do
  version '0.9.8'
  sha256 'a004c4bb1b01963fa910482bf6631a1f3a5c60ebf575259c168f5d95f38356eb'

  # github.com/uTox/uTox was verified as official when first introduced to the cask
  url "https://github.com/uTox/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/uTox/uTox/releases.atom',
          checkpoint: '3ac9e7a194c722a871e25415c165dbe8b6fe9e3930a94bee38b66846e1beaea6'
  name 'uTox'
  homepage 'https://www.tox.chat/'

  app 'uTox.app'
end
