cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.6"
  sha256 arm:          "2e9b18a6742b955ae81c3620a3b2082e664704263b206ab90c62cd9e025c6ae5",
         intel:        "fd1b9a849f85e3f2ecefb5c81fbe2d49c740e687e74aa8769855c66231b05f09",
         arm64_linux:  "c849f080082a9912be689e60ac8099d1f0823c2a8c97ef710d6a22e67952cc6c",
         x86_64_linux: "8b523fd02e51fd24d581a88c4f74a756094e308c8ec0d9b9a8c95f423fd9c3dc"

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
