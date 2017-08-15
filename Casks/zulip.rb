cask 'zulip' do
  version '1.3.0-beta'
  sha256 'dae94d80307256e7b756e69feafc9db0a3fe7ccbc9c5ff472236ef6d5121a776'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: '354ae69858f6eaf8befa93b7b61424e6946a7601820897959f02411e950ff05d'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
