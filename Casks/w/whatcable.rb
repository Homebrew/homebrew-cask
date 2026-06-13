cask "whatcable" do
  version "1.0.0"
  sha256 "a88b922cab84013309fa2d29d59f0586fb888f03b1e25ad6ce2253270d8a3be6"

  url "https://github.com/darrylmorley/whatcable/releases/download/v#{version}/WhatCable.zip"
  name "WhatCable"
  desc "Menu bar app for USB-C cable diagnostics"
  homepage "https://github.com/darrylmorley/whatcable"

  depends_on macos: :sonoma

  app "WhatCable.app"
  binary "#{appdir}/WhatCable.app/Contents/Helpers/whatcable"

  zap trash: [
    "~/Library/Application Support/WhatCable",
    "~/Library/Caches/com.bitmoor.whatcable",
    "~/Library/Caches/uk.whatcable.whatcable",
    "~/Library/HTTPStorages/com.bitmoor.whatcable",
    "~/Library/HTTPStorages/uk.whatcable.whatcable",
    "~/Library/Preferences/com.bitmoor.whatcable.plist",
    "~/Library/Preferences/uk.whatcable.whatcable.plist",
  ]
end
