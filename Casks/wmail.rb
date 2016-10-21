cask 'wmail' do
  version '2.0.0'
  sha256 '881013bf9808777fc1b773a6e94d3f33881b9ab431c19500d6bd53d18b0d455a'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: 'ee718bdeba42a54b3a11e716dbc52027d98d7576cfcbeb20493ec40a746c9e0e'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  app 'WMail.app'
end
