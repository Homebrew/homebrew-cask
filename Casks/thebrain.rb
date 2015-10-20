cask :v1 => 'thebrain' do
  version '8.0.1.8'
  sha256 'c8bac038d1aa041f03868dc9e1436e12935b467398b40f8dd9188d8b1f9ab751'

  url "http://assets.thebrain.com/downloads/TheBrain_macos_JRE_#{version.gsub('.', '_')}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'
  license :commercial

  app 'TheBrain.app'
end
