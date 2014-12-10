cask :v1 => 'thebrain' do
  version '8.0.1.2'
  sha256 '2ac492c6defc6d1156de434e84272daf9deb26edf7581da737ac077b244ad7f7'

  url "http://assets.thebrain.com/downloads/TheBrain_macos_J7_#{version.gsub('.', '_')}-a.dmg"
  homepage 'http://www.thebrain.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'TheBrain.app'
end
