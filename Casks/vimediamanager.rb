cask 'vimediamanager' do
  version '0.7a20'
  sha256 'd8a1a6f938cbc8c77ad92e063fd2bc0899ea9170b3f7f5273630668038383db9'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version}/ViMediaManager-v#{version.split('.')[-1].gsub(%r{[a-z]}, '')}.dmg"
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
