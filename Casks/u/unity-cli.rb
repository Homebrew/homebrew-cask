cask "unity-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.0-beta.10"
  sha256 arm:          "ae70ddb3301cc8599bd4c7de1ac0b65452e83a62fce603145852101dbb9f66ef",
         intel:        "84b2d0dade92bc7a760de02b7d198919953117ee205790f59e9b83927878cd41",
         arm64_linux:  "eba806368ab70772cff8a9a62c839fa109f19d902659613f33e5ea903c1bf62f",
         x86_64_linux: "10a5146400c092da0678327e167edc7f7dbb354f1b3fd76a5535990dee125da7"

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
