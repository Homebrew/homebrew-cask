cask "whatcable" do
  version "1.1.4"
  sha256 "7baca26b337849152d3d2f393cbb6ad9c5955ac6bd8dd4c4633e8f5d247b6934"

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
