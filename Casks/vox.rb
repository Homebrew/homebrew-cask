cask 'vox' do
  version '2860.0,1475072231'
  sha256 'd4a11f9aeae1d49232f47cd07dcb2bec4bc51c9b4b0340f15b47ae43e606932b'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '4b62a9b4cc8f6283a687036cd65a8e7e39abb84f993935d6ef8350bd2283537a'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'

  zap delete: [
                '~/Library/Containers/com.coppertino.Vox',
                '~/Library/Preferences/com.coppertino.Vox.plist',
              ]
end
