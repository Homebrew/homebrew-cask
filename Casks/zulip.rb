cask 'zulip' do
  version '2.3.2'
  sha256 'a5f7b8dc1dfc5e9ba63aa2ebcd7b1d36db0117f80c09de3175675fb8504e47b2'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}-mac.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
