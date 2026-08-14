cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.5"
  sha256 arm:          "1c0215d89460526057589774ef6c53136103d81d9a458fc52d8ba3a6295711b2",
         intel:        "9aa78ca9ad0629efe9b06987e04523292e9694c1e827b0f781b692fa325f389c",
         arm64_linux:  "757494c2fefd9bec1d88f42ebac77a4588d81963756dbae2ea770b297c38742b",
         x86_64_linux: "7fb0edbe2e6c889d38b0982c030713855edca82c3cda01758b0bd50a3ffd356a"

  on_macos do
    zap trash: "~/Library/Application Support/UnityHub"
  end
  on_linux do
    zap trash: [
      "~/.cache/unityhub",
      "~/.config/unityhub",
    ]
  end

  url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/#{version}/unity-#{os}-#{arch}"
  name "Unity CLI"
  desc "Command-line interface for Unity"
  homepage "https://docs.unity.com/en-us/unity-cli"

  livecheck do
    url "https://public-cdn.cloud.unity3d.com/hub/prod/cli/latest-beta.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The extension-less download is staged under the version directory's name
  binary version.to_s, target: "unity"
end
