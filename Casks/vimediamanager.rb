cask 'vimediamanager' do
  version '0.7a19'
  sha256 '066d1adfdeea8e3bcb20ce8197f9521bd09a3a080e6b5d490d4b2765de8c1130'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version}/ViMediaManager.v#{version}.dmg"
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
