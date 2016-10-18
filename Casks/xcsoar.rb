cask 'xcsoar' do
  version '6.8.7'
  sha256 'c77ec3c1275a1c1c11d53ec43a3abc368267cd16ae027b52aea7467f41246fd8'

  url "http://download.xcsoar.org/releases/#{version}/OSX/XCSoar.dmg"
  name 'XCSoar'
  homepage 'https://www.xcsoar.org/'

  app 'XCSoar.app'

  preflight do
    set_permissions "#{staged_path}/XCSoar.app", '0755'
  end
end
