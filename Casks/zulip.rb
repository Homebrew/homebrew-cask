cask 'zulip' do
  version '2.3.5'
  sha256 'cc308d749481cb2c75d77c3e2f6142c3dd51ceb2641880bdb6442b7b8a142b46'

  # github.com/zulip/zulip-electron was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-electron/releases/download/v#{version}/Zulip-#{version}.zip"
  appcast 'https://github.com/zulip/zulip-electron/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/'

  auto_updates true

  app 'Zulip.app'
end
