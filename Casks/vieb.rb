cask "vieb" do
  arch = Hardware::CPU.intel? ? "" : "arm64-"

  version "7.2.0"

  if Hardware::CPU.intel?
    sha256 "3a935e4212d435aefce420dfa9d00522f728fed4cff2654b0971b93f1c2b5096"
  else
    sha256 "9aa660bde0849f0ba17241c7889322cc6ecc94d16fa0139461643a1f33c21cf5"
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
