cask 'teamwire' do
  version '2.0.2'
  sha256 '642ff287120938ee1ada930264081bb132409438f32d728e7b015b4a169963f8'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
