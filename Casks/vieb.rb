cask "vieb" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "8.0.0"

  if Hardware::CPU.intel?
    sha256 "6fd65c601787f8148fb8edfb1b2f9edc4dc4335c1fe09235c88faa084642d4be"
  else
    sha256 "8b71ece75329c477ba47f17fdf8cabc8fe95cfec98c775ce19c5261637e21247"
  end

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
