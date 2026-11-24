cask "whatcable" do
  version "1.5.1"
  sha256 "7a018941f6588da240bb34a98cce4f2ec98a16c9521d57c142c816a09fd5d418"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"
  name "WhatCable"
  desc "Menu bar app for USB-C cable diagnostics"
  homepage "https://github.com/darrylmorley/whatcable"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"

  uninstall quit: "uk.whatcable.whatcable"

  zap trash: [
    "~/Library/Application Scripts/M4RUJ7W6MP.uk.whatcable.whatcable",
    "~/Library/Application Scripts/uk.whatcable.whatcable.widget",
    "~/Library/Application Support/WhatCable",
    "~/Library/Caches/com.bitmoor.whatcable",
    "~/Library/Caches/uk.whatcable.whatcable",
    "~/Library/Containers/uk.whatcable.whatcable.widget",
    "~/Library/Group Containers/M4RUJ7W6MP.uk.whatcable.whatcable",
    "~/Library/HTTPStorages/com.bitmoor.whatcable",
    "~/Library/HTTPStorages/uk.whatcable.whatcable",
    "~/Library/Preferences/com.bitmoor.whatcable.plist",
    "~/Library/Preferences/uk.whatcable.whatcable.plist",
  ]
end
