cask 'touche' do
  version '1.0.1'
  sha256 '9e9d9a792c2692c25448db550679e1a6c6302d4551112c39dfebbc649801a23d'

  # redsweater.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://redsweater.s3.amazonaws.com/Touche#{version}.zip"
  name 'Touché'
  homepage 'https://red-sweater.com/touche/'

  app 'Touché.app'

  zap delete: [
                '~/Library/Containers/com.red-sweater.touche',
                '~/Library/Preferences/com.red-sweater.touche.plist',
              ]
end
