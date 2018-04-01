cask 'veusz' do
  version '2.1.1'
  sha256 '61e705bafc9ffdc3a3170a5e89616ba3ea9d6f1651a4c59b382fefc4e98c68ad'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: 'fb8670130f2ebbe93fd1388066445110e64b13900e2e7e56696dfa7e63a04526'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
