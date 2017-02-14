cask 'xcsoar' do
  version '6.8.7'
  sha256 'c77ec3c1275a1c1c11d53ec43a3abc368267cd16ae027b52aea7467f41246fd8'

  url "https://download.xcsoar.org/releases/#{version}/OSX/XCSoar.dmg"
  appcast 'https://download.xcsoar.org/releases/',
          checkpoint: 'f5919c985813327e120ebe680bb44f5d11aee19b99864319ae4e36b7523bc0cb'
  name 'XCSoar'
  homepage 'https://www.xcsoar.org/'

  app 'XCSoar.app'

  preflight do
    set_permissions "#{staged_path}/XCSoar.app", '0755'
  end
end
