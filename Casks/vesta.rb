cask 'vesta' do
  version '3.4.3'
  sha256 'c6df11044c46ee35da83690a0204d071f581853858863910afb4e9916fff3d8f'

  url "http://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'http://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
