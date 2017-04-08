cask 'wmail' do
  version '2.3.0'
  sha256 '3fb07c1d4b5a2e386f687a4b1c1fe75795ae920f91e0aee61f1de4561fd9a358'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '8bdfc9efd95dffeb007621e2c8d8959f1f8eb490ff72694508bab598e8cbb1e5'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  app 'WMail.app'
end
