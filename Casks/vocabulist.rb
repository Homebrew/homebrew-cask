cask :v1 => 'vocabulist' do
  version '2.2'
  sha256 '414e77ea72c9caead1b5d7e389ed2541408350cd0a87d1e7e40c0d807ec577be'

  url "http://vocabulistapp.com/downloads/Vocabulist-#{version}.dmg"
  appcast 'http://vocabulistapp.com/downloads/appcast.xml',
          :sha256 => '37266968ad637a5ed6fdf28f851eac2545ce2f538300284697ba3a1a4c7843bd'
  homepage 'http://vocabulistapp.com/'
  license :unknown

  app 'Vocabulist.app'
end
