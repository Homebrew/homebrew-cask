cask 'zulip' do
  version '1.4.0'
  sha256 '3e24cb4c20990e48ce1797b79726a52dee8db4d1c9b3819f59a1ca1f4f05bc73'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: 'ea9704fc70e859bef7d10f54210ca858da018461bb90f7528df888fb9b8d56f0'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
