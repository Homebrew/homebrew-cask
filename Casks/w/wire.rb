cask "wire" do
  version "3.38.5196"
  sha256 "01d8a63266e417670d8227737b5bad06002c2be840296fa1de75af578a99b27e"

  url "https://github.com/wireapp/wire-desktop/releases/download/macos%2F#{version}/Wire.pkg",
      verified: "github.com/wireapp/wire-desktop/"
  name "Wire"
  desc "Collaboration platform focusing on security"
  homepage "https://wire.com/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(%r{^macos[/._-]v?(\d+(?:\.\d+)+)$}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end.flatten
    end
  end

  pkg "Wire.pkg"

  uninstall signal:  [
              ["TERM", "com.wearezeta.zclient.mac.helper"],
              ["TERM", "com.wearezeta.zclient.mac"],
            ],
            pkgutil: "com.wearezeta.zclient.mac"

  zap trash: "~/Library/Containers/com.wearezeta.zclient.mac"
end
