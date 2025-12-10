cask "yoink" do
  version "3.6.108"
  sha256 :no_check

  url "https://downloads.eternalstorms.at/Yoink.zip"
  name "Yoink"
  desc "Drag and drop utility"
  homepage "https://eternalstorms.at/yoink/mac/"

  livecheck do
    url "https://updates.eternalstorms.at/YNKMC/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  app "Yoink.app"

  zap trash: [
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo*",
    "~/Library/Application Scripts/G78RJ6NLJU.group.at.EternalStorms.Yoink",
    "~/Library/Containers/at.EternalStorms.Yoink-demo*",
    "~/Library/Group Containers/G78RJ6NLJU.group.at.EternalStorms.Yoink",
  ]
end
