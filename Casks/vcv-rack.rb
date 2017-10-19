cask 'vcv-rack' do
  version '0.4.0'
  sha256 '93761ea15a41424f16538fa3ba4ff4e162a0791ee5c72d4ed3f376c225e356bd'

  url "https://vcvrack.com/downloads/Rack-#{version}-mac.dmg"
  name 'VCV Rack'
  homepage 'https://vcvrack.com/'

  app 'Rack.app'
end
