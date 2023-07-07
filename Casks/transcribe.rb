cask "transcribe" do
  arch arm: "arm", intel: "intel"

  on_catalina :or_older do
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe#{version.no_dots}.dmg"

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_big_sur do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_monterey do
    version "9.21"
    sha256 :no_check

    on_arm do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe_arm.dmg"
    end
    on_intel do
      url "https://www.seventhstring.com/xscribe/downmo/11_12/transcribe.dmg"
    end

    livecheck do
      skip "Legacy version"
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end
  on_ventura :or_newer do
    version "9.30.0"
    sha256 arm:   "3dd0e4493f518e3e26537f699899997fe31245d9d1c8c7c7c29e04d5bf788c97",
           intel: "39fb386c1126cc1f2b87c599fc84ee032c4c1728a5930045760422aaa68f3477"

    url "https://www.seventhstring.com/xscribe/downmo/transcribe-#{arch}-#{version}.dmg"

    livecheck do
      url "https://www.seventhstring.com/xscribe/download_mac.html"
      regex(/transcribe[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end

    zap trash: [
      "~/Library/Preferences/com.seventhstring.transcribe.plist",
      "~/Library/Preferences/Transcribe!#{version.major} Preferences",
    ]
  end

  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"
end
