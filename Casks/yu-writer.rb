cask 'yu-writer' do
  version 'beta-0.5.2'
  sha256 '2b459338c2f9ece00ddcab4f9d67306bbcfdd527f9ba8e3624e9c1e14d8a816d'

  # github.com/ivarptr/yu-writer.site was verified as official when first introduced to the cask
  url "https://github.com/ivarptr/yu-writer.site/releases/download/#{version.hyphens_to_dots}/yu-writer-#{version}-macos.dmg"
  appcast 'https://github.com/ivarptr/yu-writer.site/releases.atom'
  name 'Yu Writer'
  homepage 'https://ivarptr.github.io/yu-writer.site/'

  app 'Yu Writer.app'

  zap trash: [
               '~/Library/Application Support/Yu Writer',
               '~/Library/Caches/Yu Writer',
               '~/Library/Preferences/com.github.yu-writer.helper.plist',
               '~/Library/Preferences/com.github.yu-writer.plist',
             ]
end
