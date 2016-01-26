test_cask 'sourceforge-version-latest-correct-url-format' do
  version :latest

  url 'http://sourceforge.net/projects/something/files/latest/download'
  homepage 'http://sourceforge.net/projects/something/'
end
