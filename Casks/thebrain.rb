cask :v1 => 'thebrain' do
  version '8.0.2.0'
  sha256 '1a671746a7507dd88e3449d897b5c10d2f67f9e3759e10c94e6f983b694d5e4d'

  url "http://assets.thebrain.com/downloads/TheBrain_macos_JRE_#{version.gsub('.', '_')}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'
  license :commercial

  depends_on :macos => '>= :lion'
  depends_on :arch => :intel

  installer :manual => 'TheBrain Installer.app'
end
