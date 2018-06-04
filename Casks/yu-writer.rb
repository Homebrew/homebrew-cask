cask 'yu-writer' do
  version 'beta-0.5.0'
  sha256 '9781500ddebb7fad193dedb91907bf25a682712f2fab96892728bc73f6af5db5'

  # github.com/ivarptr/yu-writer.site was verified as official when first introduced to the cask
  url "https://github.com/ivarptr/yu-writer.site/releases/download/#{version.hyphens_to_dots}/yu-writer-#{version}-macos.dmg"
  appcast 'https://github.com/ivarptr/yu-writer.site/releases.atom',
          checkpoint: 'e53e9b92ade621a00f3d772948831e7a77fb0d20467ed7df588ab37df98db971'
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
