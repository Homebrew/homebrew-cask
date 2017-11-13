cask 'xcsoar' do
  version '6.8.9'
  sha256 '746f8ab055f8b54f136c09156cf44fa394ad4299d10518010cb3fff2ba189288'

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
