cask "vieb" do
  arch arm: "arm64-"

  version "12.2.0"
  sha256 arm:   "123bc82e19ff7f17684b197611d33937694f3f382ea1d31673fb327642ab2b6b",
         intel: "bd6198b6b26095115cff93a429184208ea0ef1da1d1e9a8fb7b6a9d2482a7c35"

  url "https://github.com/Jelmerro/Vieb/releases/download/#{version}/Vieb-#{version}-#{arch}mac.zip",
      verified: "github.com/Jelmerro/Vieb/"
  name "Vieb"
  desc "Vim Inspired Electron Browser"
  homepage "https://vieb.dev/"

  depends_on macos: ">= :big_sur"

  app "Vieb.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vieb.wrapper.sh"
  binary shimscript, target: "vieb"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Vieb.app/Contents/MacOS/Vieb' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Vieb",
    "~/Library/Caches/Vieb",
  ]
end
