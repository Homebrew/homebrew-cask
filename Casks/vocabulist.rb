cask :v1 => 'vocabulist' do
  version '2.3'
  sha256 '25a7c55c1b3adda3a5afdf91912e107bb1a437d0a83051812878d359d4a280a6'

  url "http://vocabulistapp.com/downloads/Vocabulist-#{version}.dmg"
  appcast 'http://vocabulistapp.com/downloads/appcast.xml',
          :sha256 => '37266968ad637a5ed6fdf28f851eac2545ce2f538300284697ba3a1a4c7843bd'
  name 'Vocabulist'
  homepage 'http://vocabulistapp.com/'
  license :oss

  app 'Vocabulist.app'
end
