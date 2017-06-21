cask 'wxcrafter' do
  version :latest
  sha256 :no_check

  url 'https://codelite.org/downloads/wxCrafter/wxCrafterDownloads.php?osx'
  name 'wxCrafter'
  homepage 'https://wxcrafter.codelite.org/'

  depends_on macos: '>= :mountain_lion'

  app 'wxCrafter.app'

  zap trash: [
               '~/Library/Application Support/wxcrafter',
               '~/Library/Preferences/wxcrafter.plist',
             ]
end
