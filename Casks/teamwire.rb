cask 'teamwire' do
  version '2.0.0'
  sha256 '1f5a0c93666b694ff57f8f8b04449edd426e721f146879fd7ed3d8c893323d37'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
