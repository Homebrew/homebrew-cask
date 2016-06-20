cask 'telegram' do
  version '2.15-47337'
  sha256 '89643b017b560ec177ac306ded6996def9db8e920165198c09993165ac75c010'

  # telegram.org was verified as official when first introduced to the cask
  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '4681f464dc4b0cfe88528cfd8838e1fb8430e2685014c9edfc9828043b4f0743'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
