cask "wire" do
  version "3.40.5285"
  sha256 "a5c581de2add3f20e3e7975698dc9cfa84e1546807b48bbffc4024d64ff9ea2b"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  pkg "Wire.pkg"

  uninstall signal:  [
              ["TERM", "com.wearezeta.zclient.mac.helper"],
              ["TERM", "com.wearezeta.zclient.mac"],
            ],
            pkgutil: "com.wearezeta.zclient.mac"

  zap trash: "~/Library/Containers/com.wearezeta.zclient.mac"
end
