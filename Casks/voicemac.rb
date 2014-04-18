class Voicemac < Cask
  url 'http://download.mrgeckosmedia.com/VoiceMac.zip'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  version 'latest'
  no_checksum
  link 'VoiceMac/VoiceMac.app'
  after_install do
    system '/bin/chmod', 'a+r', "#{destination_path}/VoiceMac/VoiceMac.app/Contents/Info.plist"
  end
end
