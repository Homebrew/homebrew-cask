cask 'wxcrafter' do
  version :latest
  sha256 :no_check

  url 'http://codelite.org/downloads/wxCrafter/wxCrafterDownloads.php?osx'
  name 'wxCrafter'
  homepage 'http://wxcrafter.codelite.org'

  depends_on macos: '>= :mountain_lion'

  app 'wxCrafter.app'

  zap delete: [
                '~/Library/Application Support/wxcrafter',
                '~/Library/Preferences/wxcrafter.plist',
              ]
end
