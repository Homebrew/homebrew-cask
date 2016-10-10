cask 'the-archive-browser' do
  version '1.11.1'
  sha256 '67bd39f6951179653e25fa8d63eef5c85e4921b702b01b228091bfc7a8e98a5d'

  url "https://wakaba.c3.cx/releases/TheArchiveBrowser/TheArchiveBrowser#{version}.zip"
  name 'The Archive Browser'
  homepage 'https://archivebrowser.c3.cx'

  app 'The Archive Browser.app'
end
