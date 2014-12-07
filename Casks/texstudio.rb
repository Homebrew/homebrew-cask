cask :v1 => 'texstudio' do
  version '2.8.8'
  sha256 'cd9fd18b0147f43db64af0bb9bb468c9532a8967aa64d1b0aaa09ea98980e91e'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio_#{version}_osx_qt5.zip"
  homepage 'http://texstudio.sourceforge.net/'
  license :oss

  app 'texstudio.app'
end
