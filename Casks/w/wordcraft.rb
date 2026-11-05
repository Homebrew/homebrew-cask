cask "wordcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.2"
  sha256 arm:          "1ce120e09aa842fe24a82f0f0023d850416bc1f0bef6e4848dbfcb69d60ddadf",
         intel:        "1ce120e09aa842fe24a82f0f0023d850416bc1f0bef6e4848dbfcb69d60ddadf",
         arm64_linux:  "75dcdf035f8f533c5165d9e52cc99a09098ea3a4fe5ef38f3b3e4a764a37acf2",
         x86_64_linux: "74932bc67fe5f5355305a87b79eaed9e5ab836f685e1633af4992161e47f80a4"

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
