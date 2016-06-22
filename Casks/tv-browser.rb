cask 'tv-browser' do
  version '3.4.3'
  sha256 '2b57c3e9d7d599045894b589c4c199f818336a46cffbde60f4565d8a035719cc'

  # downloads.sourceforge.net/sourceforge/tvbrowser was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'
  license :gpl

  app 'TV-Browser.app'
end
