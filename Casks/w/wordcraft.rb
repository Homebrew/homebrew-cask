cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.4.0"
  sha256 arm:          "90d30b23b7f1f3873f108db61218d514d8ca5465ef7ed3baa539a8ed24e98655",
         intel:        "90d30b23b7f1f3873f108db61218d514d8ca5465ef7ed3baa539a8ed24e98655",
         arm64_linux:  "c0ca379b54702dda563d9c94d984ed9026a0737300d51b994657c6f3c18eb291",
         x86_64_linux: "dd1eddcac72c4357e0d66f45e3ad9f46c2845b5dbd42f895d221c3edd8462ce9"

  on_macos do
    app "WordCraft.app"

    zap trash: "~/Library/Application Support/WordCraft"
  end
  on_linux do
    app_image "wordcraft-#{version}-linux-#{arch}.AppImage", target: "WordCraft.AppImage"

    zap trash: "~/.config/wordcraft"
  end

  url "https://github.com/storytold/wordcraft/releases/download/v#{version}/wordcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "WordCraft"
  desc "Word processor"
  homepage "https://github.com/storytold/wordcraft"
end
