cask 'teamwire' do
  version '2.1.0'
  sha256 'c6b96a0abe8089dee02a25ecba0f5c42244f9b8a76ea7a01bbd4bb76cfb84865'

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name 'Teamwire'
  homepage 'https://www.teamwire.eu/'

  app 'Teamwire.app'

  zap trash: '~/Library/Application Support/Teamwire/'
end
