cask :v1 => 'tv-browser' do
  version '3.3.3'
  sha256 '951fe8478fa2efa5f7784c23f153bcc8b0a6fcb8a7405c4990c44b3c967e73cc'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/tvbrowser/tvbrowser_#{version}_mac.dmg"
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'
  license :gpl

  app 'TV-Browser.app'
end
