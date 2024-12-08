cask "utm@beta" do
  version "4.6.2"
  sha256 "338474b92017d0c513502b0fb5d44c3c4485113f4011006d8ef33b79371109ab"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
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
  depends_on macos: ">= :big_sur"

  app "UTM.app"
  binary "#{appdir}/UTM.app/Contents/MacOS/utmctl"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Application Scripts/com.utmapp.QEMUHelper",
    "~/Library/Application Scripts/com.utmapp.UTM",
    "~/Library/Containers/com.utmapp.QEMUHelper",
    "~/Library/Containers/com.utmapp.UTM",
    "~/Library/Group Containers/*.com.utmapp.UTM",
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
