cask :v1 => 'wxcrafter' do
  version :latest
  sha256 :no_check

  url 'http://codelite.org/downloads/wxCrafter/wxCrafterDownloads.php?osx'
  name 'wxCrafter'
  homepage 'http://wxcrafter.codelite.org'
  license :freemium

  app 'wxCrafter.app'

  zap :delete => [
                  '~/Library/Application Support/wxcrafter',
                  '~/Library/Preferences/wxcrafter.plist'
                 ]

  depends_on :macos => '>= :mountain_lion'
end
