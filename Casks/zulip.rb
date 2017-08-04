cask 'zulip' do
  version '1.2.0-beta'
  sha256 'a1416d3a2a08ff1de111c108b7702dddb840e4634f19760d0e76d31d2d72d1b1'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom',
          checkpoint: '354ae69858f6eaf8befa93b7b61424e6946a7601820897959f02411e950ff05d'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
