cask 'zulip' do
  version '5.0.0'
  sha256 'a8189b22e9ba51db256e427e968ddd5324f6b02fa62bf7201957154733c6acb7'

  # github.com/zulip/zulip-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/zulip/zulip-desktop/releases/download/v#{version}/Zulip-#{version}.dmg"
  appcast 'https://github.com/zulip/zulip-desktop/releases.atom'
  name 'Zulip'
  homepage 'https://zulipchat.com/apps/'

  auto_updates true

  app 'Zulip.app'

  zap trash: [
               '~/Library/Application Support/Zulip',
               '~/Library/Caches/org.zulip.zulip-electron.helper',
               '~/Library/Logs/Zulip',
               '~/Library/Preferences/org.zulip.zulip-electron.helper.plist',
               '~/Library/Preferences/org.zulip.zulip-electron.plist',
               '~/Library/Saved Application State/org.zulip.zulip-electron.savedState',
             ]
end
