cask "vieb" do
  arch arm: "arm64-"

  version "9.2.1"
  sha256 arm:   "af3ad9970b17b23150e260c7f36aed46b9cbb9606603a18f271480fc5a599bb1",
         intel: "e7a92c5430b34fdad3c1a2c9f0aa55c3ab1aada561b1fa5b016c0c830ffbf2f2"

  url "https://github.com/Jelmerro/Vieb/releases/download/#{version}/Vieb-#{version}-#{arch}mac.zip",
      verified: "github.com/Jelmerro/Vieb/"
  name "Vieb"
  desc "Vim Inspired Electron Browser"
  homepage "https://vieb.dev/"

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
