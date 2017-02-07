cask 'vox' do
  version '2.8.18'
  sha256 '3534559b33b4bfd05a384f35986d7027d225971aac126a4556c3750ca13dea28'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'dc60a9a3fcbfe53b8186e6608f2f27e88185bd17bfd6d754323d7c67055d11b8'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
