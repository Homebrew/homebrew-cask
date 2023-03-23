cask "transcribe" do
  arch intel: "intel", arm: "arm"

  livecheck_version = "11"

  sha256 :no_check

  on_catalina :or_older do
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"

    livecheck_version = "10"
  end
  on_big_sur :or_older do
    version "9.21"
    url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe#{arch}.dmg"
  end
  on_ventura do
    version "9.25.0"
    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck_version = "13"
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  livecheck do
    url "https://www.seventhstring.com/xscribe/download_mac.html"
    regex(/version\s*(\d+(?:\.\d+)+)\s*for\s*Mac\s*OS\s*#{livecheck_version}/i)
  end

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/Transcribe!7 Preferences",
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
  ]
end
