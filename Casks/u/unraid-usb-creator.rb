cask "unraid-usb-creator" do
  version "2.0.11,1"
  sha256 "ba85bee1b9e39bf09f829d3a87ceb76b7b4fb49cc7f72a3dce596431113f66aa"

  url "https://github.com/unraid/usb-creator-next/releases/download/v#{version.csv.first}-unraid.#{version.csv.second}/Unraid.USB.Creator-v#{version.csv.first}-unraid.#{version.csv.second}.dmg"
  name "Unraid USB Creator"
  desc "Home of the Next-Gen Unraid USB Creator, a fork of the Raspberry Pi Imager"
  homepage "https://unraid.net/download/"

  livecheck do
    url "https://releases.unraid.net/usb-creator"
    strategy :json do |json|
      version_tag = json.dig("imager", "latest_version")
      next if version_tag.blank?

      version = version_tag[/^v?(\d+(?:\.\d+)+)/, 1]
      build = version_tag[/unraid\.(\d+)$/, 1]
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  depends_on macos: :ventura

  app "Unraid USB Creator.app"

  zap trash: "~/Library/Preferences/net.unraid.Unraid USB Creator.plist"
end
