cask "vienna-assistant" do
  version "1.2.450"
  sha256 :no_check

  url "https://www.vsl.co.at/service/vamac",
      verified:   "vsl.co.at",
      user_agent: :fake
  name "Vienna Assistant"
  desc "Manager for Vienna Symphonic Library sound samples"
  homepage "https://www.vsl.info/en/manuals/vienna-assistant/introduction"

  livecheck do
    url "https://api.vsl.co.at/data/.well-known/dataservice-configuration"
    strategy :json do |json|
      json["vaLatestVersionReadable"]
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "Vienna Assistant #{version}.pkg"

  uninstall pkgutil: "at.co.vsl.viassistant.*"

  zap trash: [
    "~/Library/Preferences/at.co.vsl.Vienna Assistant.plist",
    "~/Library/Preferences/at.co.vsl.viennaassistant.plist",
    "~/Library/Saved Application State/at.co.vsl.viennaassistant.savedState",
  ]
end
