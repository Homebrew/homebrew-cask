cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.15"
  sha256 arm:          "1e9e09d429062338dc6a56290075829e731763a9b3a3b6c963f3be0c12b248f4",
         intel:        "865ed9de4dd13a4bcb331a343770dee66c8babefb6e1ad98f1256c5296ad1674",
         arm64_linux:  "919178bee9ba827f4f52b0fc5e713fcae663abf23512db73488dbcdb2342295f",
         x86_64_linux: "cf3ddef260bba536332348bd5570fb80d90a8092784a893b30971f8ebf2a489e"

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
