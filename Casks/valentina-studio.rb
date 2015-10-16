cask :v1 => 'valentina-studio' do
  version '6.0.5'
  sha256 'c9ae0cec456661c4b57825b55ac43f4b23c6e6f13d8e89a0bd90b2e07e41553a'

  url 'http://www.valentina-db.com/download/release/mac_64/vstudio_x64_6_mac.dmg'
  name 'Valentina Studio'
  homepage 'http://www.valentina-db.com/en/valentina-studio-overview'
  license :freemium

  app 'Valentina Studio.app'
end
