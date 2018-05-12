cask 'zulip' do
  version '2.0.0'
  sha256 '6d91a4971cfe5f0af227edf6ab002f81cedc66270b9e50f6b1daa7655326b8c1'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: 'fccf46be6d76f1ebd01328d8839e2dbf3a4e87ebe7fb015cdcd1a0d3d6e56d57'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
