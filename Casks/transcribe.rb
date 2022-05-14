cask "transcribe" do
  if MacOS.version <= :catalina
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/version\s*(\d+(?:\.\d+)+)\s*for\s*Mac\s*OS\s*10/i)
    end
  else
    version "9.21"
    sha256 :no_check

    if Hardware::CPU.intel?
      url "https://www.seventhstring.com/xscribe/transcribe.dmg"
    else
      url "https://www.seventhstring.com/xscribe/transcribe_arm.dmg"
    end

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/version\s*(\d+(?:\.\d+)+)\s*for\s*Mac\s*OS\s*11/i)
    end
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/Transcribe!7 Preferences",
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
  ]
end
