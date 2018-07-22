cask 'zulip' do
  version '2.3.3'
  sha256 '33f50ff39582a22b515c2d6c03073b6e1f98283e0f99355354c9bab25954486b'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
