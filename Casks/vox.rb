cask 'vox' do
  version '2880.0,1475838313'
  sha256 '8c2591089d2e419216ce9ae991a558af2f4897726148a8a02504bad710197f88'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'c942319fd75d1e38b7284ed37fb7051a1e434523a5d1494c9a287c3742268f8d'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'

  app 'Vox.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
