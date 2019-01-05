cask 'vcv-rack' do
  version '0.6.2c'
  sha256 '7c8afd9d22fd2773e9435cfa03eaf23812fabfdb80eebdc673228427b483df88'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  appcast 'https://github.com/VCVRack/Rack/releases.atom'
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
