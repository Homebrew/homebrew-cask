cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.8"
  sha256 arm:          "84e5775d1ad97c3a54528985c057a2a4ce034340995fecad53ea9c96adb75178",
         intel:        "0906ffe94cd5f024fe308484c6790f1df0ec9374956d6fd47d219ea60c6559f9",
         arm64_linux:  "e9a2c002536f7ff51c082ab67aa3f0232ec8273ddcf8ca31550f8bf716ae5444",
         x86_64_linux: "70a172c729a90e6325cc2b8e0115da79208f419d9b5bc7e485dba3347e201ecf"

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
