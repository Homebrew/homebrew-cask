cask 'therm' do
  version '0.3.0'
  sha256 '4d27e291660d35a8b089282738dfec5cd53cd1ba031ebbc24635fec4be1e79cb'

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  appcast 'https://github.com/trufae/Therm/releases.atom'
  name 'Therm'
  homepage 'https://github.com/trufae/Therm'

  app 'Therm.app'
end
