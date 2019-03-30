cask 'udig' do
  version '2.0.0'
  sha256 'b01e08bc9067a5d584c223293ba2d536a14487327fc73866836f67089545a99a'

  url "http://udig.refractions.net/files/downloads/udig-#{version}.macosx.cocoa.x86_64.dmg"
  appcast 'http://udig.refractions.net/download/'
  name 'uDig'
  homepage 'http://udig.refractions.net/'

  suite 'udig'

  caveats do
    depends_on_java '8'

    <<~EOS
      #{token} will fail to launch if you don't have java 1.8 installed as the system default;
      otherwise you can point #{token} to java 1.8 by editing:
      /Applications/udig/udig.app/Contents/Info.plist
    EOS
  end
end
