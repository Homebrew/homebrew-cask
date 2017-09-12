cask 'vcv-rack' do
  version '0.3.0'
  sha256 '61222b8cf64ee22f28e94f143137b4f48fdd8365ccb07368123c097aae9ba75b'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  suite 'Rack'
end
