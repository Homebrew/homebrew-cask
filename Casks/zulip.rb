cask 'zulip' do
  version '5.4.0'
  sha256 '3d40777d8f5d8e4d1e8134a1e5ffa03bc5f493fa7fa12abc3bf41c89de7f9454'

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
