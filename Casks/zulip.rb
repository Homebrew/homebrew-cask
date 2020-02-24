cask 'zulip' do
  version '4.0.0'
  sha256 '3028a7d4820fa42b94eb43717715e2d8c677dac1111bf604bd868bf062081117'

  # github.com/zulip/zulip-desktop was verified as official when first introduced to the cask
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
