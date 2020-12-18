cask "upic" do
  version "0.21.1"
  sha256 "1152e2f3995cc33d16d764348618a70a9fb067f2b17f548a813646809aa1154c"

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  desc "Native and simple picture and file upload tool"
  homepage "https://github.com/gee1k/uPic"

  depends_on macos: ">= :sierra"

  app "uPic.app"
  shimscript = "#{staged_path}/upic.wrapper.sh"
  binary shimscript, target: "upic"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/uPic.app/Contents/MacOS/uPic' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
  ]
end
