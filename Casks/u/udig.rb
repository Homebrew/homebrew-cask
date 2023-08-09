cask "udig" do
  version "2.0.0"
  sha256 "b01e08bc9067a5d584c223293ba2d536a14487327fc73866836f67089545a99a"

  url "http://udig.refractions.net/files/downloads/udig-#{version}.macosx.cocoa.x86_64.dmg"
  name "uDig"
  homepage "http://udig.refractions.net/"

  livecheck do
    url "http://udig.refractions.net/download/"
    regex(%r{href=.*?/udig-(\d+(?:\.\d+)*)\.macosx\.cocoa\.x86_64\.dmg}i)
  end

  suite "udig"

  caveats do
    depends_on_java "8"

    <<~EOS
      #{token} will fail to launch unless java 1.8 is installed as the system’s default. Point #{token} to java 1.8 by editing:

        #{appdir}/udig/udig.app/Contents/Info.plist
    EOS
  end
end
