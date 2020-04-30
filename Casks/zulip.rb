cask 'zulip' do
  version '5.1.0'
  sha256 'c0c6cd9bc0aa0c5f7854aad2bb31ac7e3beeca591dd06b47321c262fb4a60f22'

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
