cask 'vimediamanager' do
  version '0.7.18'
  sha256 '4ba3510f5996840664b9bc0793a92367ff61ec0f4bb69cd985df5e26fb1da7b3'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.major_minor}a#{version.patch}/ViMediaManager_v#{version}c.dmg"
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
