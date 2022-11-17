cask "vieb" do
  arch arm: "arm64-"

  version "9.4.0"
  sha256 arm:   "08529b36f105deff695014529108dd2fb6005829246d51c0b0d9b2702b10619f",
         intel: "9356da853b16223a3aa930684d9fb020fc18e0afcac4002ac6ffd26419840d0b"

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
