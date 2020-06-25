cask 'zulip' do
  version '5.3.0'
  sha256 '17fe694c514e876f24e5b0b9550ce4b66fbeccca4225b4f0b93ab9d4fb797f46'

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
