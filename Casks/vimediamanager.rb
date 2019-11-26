cask 'vimediamanager' do
  version '0.7a21'
  sha256 '12d572fee4ceacfa24319badaa5d5910daff3579faffd5b3b890c08fa38259af'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version}/ViMediaManager.dmg"
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
