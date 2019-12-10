cask 'teamspeak-client' do
  version '3.3.2'
  sha256 '3542adc706837d9c7eddc45897556d6884008b6f761f4be518bfdc8c4d6d262b'

  # files.teamspeak-services.com/releases/client was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  depends_on macos: '>= :sierra'

  app "TeamSpeak #{version.major} Client.app"
end
