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
    version "9.30.2"
    sha256 arm:   "6a8a3275827b2de06ee50eadb2338d565f66ac51eca86830e7c4d9006fbfe1a5",
           intel: "af5f3cb374fc3b43062772f1bb1024b2979ba6c7221bf71daea44808e9d1cc62"

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
