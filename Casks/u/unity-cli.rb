cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.11"
  sha256 arm:          "f6b54b9d9a46a5568f5123d47adde66605c7334ba57c6016772d15d3cf92ddf7",
         intel:        "9edd1a1c5d0932af62b4d708b2939b2a08d8602ce3999645566a49e431a20290",
         arm64_linux:  "1e55222f1c4cfcdcd0230ed621370252911badeb9adb0f36e7f071dda3d0d938",
         x86_64_linux: "684bf229881963c731895a4e744cdf541be800912d68fa1cea40715b63b1d396"

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
