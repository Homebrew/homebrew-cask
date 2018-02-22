cask 'xperia-companion' do
  version :latest
  sha256 :no_check

  url 'https://www-support-downloads.sonymobile.com/Software%20Downloads/Xperia%20Companion/XperiaCompanion.dmg'
  name 'Xperia™ Companion'
  homepage 'https://support.sonymobile.com/xperia-companion/'

  app 'Xperia Companion.app'

  zap trash: [
               '~/Library/Application Support/com.sonymobile.Xperia-Companion',
             ]
end
