cask :v1 => 'tateditor' do
  version :latest
  sha256 :no_check

  url 'http://www.cc4966.net/software/tateditor-osx.dmg'
  name 'TATEditor'
  homepage 'http://www.cc4966.net/'
  license :gratis

  app 'tateditor.app'
end
