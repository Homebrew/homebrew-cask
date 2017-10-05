cask 'vcv-rack' do
  version '0.3.2'
  sha256 '7e9e820fe9b67b8ce84c317fb0169663a818989ae9f75042734da248960c6aec'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  suite 'Rack'
end
