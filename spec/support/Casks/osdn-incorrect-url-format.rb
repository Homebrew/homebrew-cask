test_cask 'osdn-incorrect-url-format' do
  version '1.2.3'

  url 'http://osdn.jp/projects/something/files/Something-1.2.3.dmg/download'
  homepage 'http://osdn.jp/projects/something/'
end
