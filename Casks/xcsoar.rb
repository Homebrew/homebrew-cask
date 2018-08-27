cask 'xcsoar' do
  version '6.8.10'
  sha256 'cdfa764a6164f51d9b5c5ce08836bef3ff8064622341217a2c8762f72e367e60'

  url "https://download.xcsoar.org/releases/#{version}/OSX/XCSoar.dmg"
  appcast 'https://download.xcsoar.org/releases/'
  name 'XCSoar'
  homepage 'https://www.xcsoar.org/'

  app 'XCSoar.app'

  preflight do
    set_permissions "#{staged_path}/XCSoar.app", '0755'
  end
end
