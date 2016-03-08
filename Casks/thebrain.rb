cask 'thebrain' do
  version '8.0.2.1'
  sha256 'ccdee14f634808d15afad5d5b50436d1f46e3b05552a9d3c0497c7120a13ef33'

  url "http://assets.thebrain.com/downloads/TheBrain_macos_JRE_#{version.gsub('.', '_')}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'
  license :commercial

  installer script: 'TheBrain Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   ['-q'],
            sudo:   false

  uninstall delete: '/Applications/TheBrain.app'
end
