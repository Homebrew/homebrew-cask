cask :v1 => 'tv-browser' do
  version '3.3.3'
  sha256 '951fe8478fa2efa5f7784c23f153bcc8b0a6fcb8a7405c4990c44b3c967e73cc'

  url "https://downloads.sourceforge.net/sourceforge/tvbrowser/tvbrowser_#{version}_mac.dmg"
  homepage 'http://www.tvbrowser.org/index.php?setlang=en'
  license :oss

  app 'TV-Browser.app'
end
