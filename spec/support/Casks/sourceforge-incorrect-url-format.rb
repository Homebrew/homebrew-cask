test_cask 'sourceforge-incorrect-url-format' do
  version '1.2.3'

  url 'http://sourceforge.net/projects/something/files/Something-1.2.3.dmg/download'
  homepage 'http://sourceforge.net/projects/something/'
end
