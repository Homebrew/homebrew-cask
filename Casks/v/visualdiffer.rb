cask "visualdiffer" do
  version "2.2.2"
  sha256 "3e3d35f0cd9b856c006ed6c5247d6bb96de7a94e4f7b2f32d19f978f47a64e6a"

  url "https://github.com/visualdiffer/visualdiffer/releases/download/v#{version}/VisualDiffer-#{version}.zip"
  name "VisualDiffer"
  desc "Visually compare folders and files"
  homepage "https://visualdiffer.com/"

  livecheck do
    url "https://app.visualdiffer.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "VisualDiffer.app"

  zap trash: [
    "~/Library/Application Support/VisualDiffer",
    "~/Library/Preferences/com.visualdiffer.plist",
    "~/Library/Saved Application State/com.visualdiffer.savedState",
  ]
end
