cask 'texstudio' do
  version '2.10.8'
  sha256 '32205a0c70ce4686e7e3b270cb05585c3bfd0dded0556a19c3b4a34ab4e981f1'

  url "http://downloads.sourceforge.net/sourceforge/texstudio/texstudio-#{version}-osx-qt5.5.zip"
  name 'TeXstudio'
  homepage 'http://texstudio.sourceforge.net/'
  license :gpl

  app 'texstudio.app'
end
