cask 'vesta' do
  version '3.4.4'
  sha256 'bd41a8863d4dc75d4e511bb4f5588c548740767781b4a1cfcea3dd5ca9465f1e'

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'https://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
