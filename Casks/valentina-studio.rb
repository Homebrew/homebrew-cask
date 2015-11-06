cask :v1 => 'valentina-studio' do
  version '6.0.5'
  sha256 '6d8cf45e3efa8ceb246069076d8a83f030b66097d3d37490405e7cbae0c07481'

  url 'http://www.valentina-db.com/download/release/mac_64/vstudio_x64_6_mac.dmg'
  name 'Valentina Studio'
  homepage 'http://www.valentina-db.com/en/valentina-studio-overview'
  license :freemium

  app 'Valentina Studio.app'
end
