cask 'zulip' do
  version '1.4.0'
  sha256 '43468572eb05071adddeae820884c503b97a787fb6fd0e21d6b1d7f11a79ac9b'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: 'ea9704fc70e859bef7d10f54210ca858da018461bb90f7528df888fb9b8d56f0'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
