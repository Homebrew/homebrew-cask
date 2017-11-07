cask 'yu-writer' do
  version 'beta-0.4.4'
  sha256 '982af5671d31162212529a42221953ecc93bc7684f70f8ca32ba8dc4717026a1'

  # github.com/ivarptr/yu-writer.site was verified as official when first introduced to the cask
  url "https://github.com/ivarptr/yu-writer.site/releases/download/#{version.hyphens_to_dots}/yu-writer-#{version}-macos.dmg"
  appcast 'https://github.com/ivarptr/yu-writer.site/releases.atom',
          checkpoint: 'cfaa436b1d11555db172f778e671a30e7cc5d2ad71ab5a45fca75a3690b983c1'
  name 'Yu Writer'
  homepage 'https://ivarptr.github.io/yu-writer.site/'

  app 'Yu Writer.app'

  zap delete: '~/Library/Caches/Yu Writer',
      trash:  [
                '~/Library/Application Support/Yu Writer',
                '~/Library/Preferences/com.github.yu-writer.helper.plist',
                '~/Library/Preferences/com.github.yu-writer.plist',
              ]
end
