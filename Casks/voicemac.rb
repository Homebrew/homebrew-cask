class Voicemac < Cask
  url 'http://download.mrgeckosmedia.com/VoiceMac.zip'
  homepage 'https://mrgeckosmedia.com/applications/info/VoiceMac'
  version 'latest'
  sha256 :no_check
  link 'VoiceMac/VoiceMac.app'
  after_install do
    system '/bin/chmod', '--', 'a+r', "#{destination_path}/VoiceMac/VoiceMac.app/Contents/Info.plist"
  end
end
