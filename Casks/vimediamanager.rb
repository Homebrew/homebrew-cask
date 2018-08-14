cask 'vimediamanager' do
  version '0.7.17'
  sha256 'd4948aa0c70cfd860c491b13016bb4a3355d3a40bf04189580046a791009011f'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.minor}a#{version.patch}/ViMediaManager_v#{version}c.dmg"
  appcast 'https://github.com/vidalvanbergen/ViMediaManager/releases.atom'
  name 'ViMediaManager'
  homepage 'https://github.com/vidalvanbergen/ViMediaManager'

  app 'ViMediaManager.app'

  zap trash: [
               '~/Library/Application Support/ViMediaManager',
               '~/Library/Caches/com.vidalvanbergen.vimediamanager-alpha',
               '~/Library/Preferences/com.vidalvanbergen.vimediamanager-alpha.plist',
               '~/Library/Saved Application State/com.vidalvanbergen.vimediamanager-alpha.savedState',
             ]
end
