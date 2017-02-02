cask 'vox' do
  version '2.8.16'
  sha256 '52d5bd6903675e1afc7163af36f05a231efc48804c8273a109990bf830714db3'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.coppertino.Vox/Vox.dmg'
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'f7ae93b9daf4918507e9379dce4a568972c2ae7f609bfad9000da50e64e6cfca'
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player'

  app 'VOX.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
