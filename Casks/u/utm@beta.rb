cask "utm@beta" do
  version "5.0.6"
  sha256 "6a722486a660e0ab2cf5826bbeaee0f5963999029366709f5a3048d73b1d7cb1"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://mac.getutm.app/"

  # This uses the `GithubReleases` strategy and includes releases marked as
  # "pre-release", so this will use both unstable and stable releases.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "utm"
  depends_on macos: :monterey

  app "UTM.app"
  binary "#{appdir}/UTM.app/Contents/MacOS/utmctl"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Application Scripts/*.com.utmapp.UTM",
    "~/Library/Application Scripts/com.utmapp.QEMUHelper",
    "~/Library/Application Scripts/com.utmapp.UTM",
    "~/Library/Containers/com.utmapp.QEMUHelper",
    "~/Library/Containers/com.utmapp.UTM",
    "~/Library/Group Containers/*.com.utmapp.UTM",
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
