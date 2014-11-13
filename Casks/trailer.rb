cask :v1 => 'trailer' do
  version '1.1.3'
  sha256 '5f59c927658ea1adfde83b5214438b485117f32024b8f73eaa4da7538d2bc95f'

  url "http://ptsochantaris.github.io/trailer/trailer#{version.gsub('.','')}.zip"
  appcast 'http://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '287e8eb967e9cfb3e98cc21e927406423cdbed3c147e24ce45701c07b6a2f252'
  homepage 'http://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
