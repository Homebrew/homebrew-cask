cask :v1 => 'valentina-studio' do
  version '6.0.13'
  sha256 '6d8cf45e3efa8ceb246069076d8a83f030b66097d3d37490405e7cbae0c07481'

  url 'https://www.valentina-db.com/en/all-downloads/vstudio/current/vstudio_mac_64?format=raw'
  name 'Valentina Studio'
  homepage 'https://www.valentina-db.com/en/valentina-studio-overview'
  license :freemium

  app 'Valentina Studio.app'
end
