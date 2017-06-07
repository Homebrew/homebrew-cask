cask 'wmail-pre-release' do
  version '2.0.9'
  sha256 '4978e60a7b92686d88c500aeda758893185183a5454c09d048801a487cac2a7a'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_prerelease_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '08566cf44721cce0db76e13e3e101dbb827334d23222ae26d2145619ecf9ab39'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  conflicts_with cask: 'wmail'

  app 'WMail pre-release.app'
end
