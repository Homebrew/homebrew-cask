cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.13"
  sha256 arm:          "9bfb74ef0a6fc4e9801c7e8c829d4989b8b60653f036a60b9fe37e0f6a105220",
         intel:        "16df6cad3668e26cd6ba914744a7c250a0423e6936eb016d87e8a933656e6287",
         arm64_linux:  "2cd9e6ef10a083fa454f8fa5efeabf2a7f36dfba5e3d38d9e0ee0d30ce8588ff",
         x86_64_linux: "a84dace1f5e85b629fff841ddfc5ec8e97fd2a178242fca91c80bc5680142fb3"

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
