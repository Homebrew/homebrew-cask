cask 'xcsoar' do
  version '6.8.10'
  sha256 'cdfa764a6164f51d9b5c5ce08836bef3ff8064622341217a2c8762f72e367e60'

  url "https://download.xcsoar.org/releases/#{version}/OSX/XCSoar.dmg"
  appcast 'https://download.xcsoar.org/releases/',
          checkpoint: 'a1e618fc7b6d2880096a6e6d97bfdb0e261e5bd1b9b7a4becee03424bd68d232'
  name 'XCSoar'
  homepage 'https://www.xcsoar.org/'

  app 'XCSoar.app'

  preflight do
    set_permissions "#{staged_path}/XCSoar.app", '0755'
  end
end
