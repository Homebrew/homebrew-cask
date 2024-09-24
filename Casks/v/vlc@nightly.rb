cask "vlc@nightly" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "20240924-0413,daab68e6"
    sha256 "4ce9455a08682876d8a9660883d305d74e6edb144e9d830d5b81f8489babd6f2"

    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{version.csv.first}/vlc-4.0.0-dev-arm64-#{version.csv.second}.dmg"
  end
  on_intel do
    version "20240924-0416,daab68e6"
    sha256 "f617a21edee78c509a8dbb31dbac8cd27705a48188adec88a2e53c2615c1a6e8"

    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{version.csv.first}/vlc-4.0.0-dev-intel64-#{version.csv.second}.dmg"
  end

  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/"
    strategy :page_match do |page|
      date = page[%r{href="(\d+-\d+)/"}, 1]
      filename_arch = (arch == "x86_64") ? "intel64" : arch
      version_page = Homebrew::Livecheck::Strategy.page_content("https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{date}/")
      "#{date},#{version_page[:content].scan(/href=.*?vlc-4\.0\.0-dev-#{filename_arch}-([0-9a-f]+)\.dmg/i).flatten.first}"
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "vlc"

  app "VLC.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*",
    "~/Library/Application Support/org.videolan.vlc",
    "~/Library/Application Support/VLC",
    "~/Library/Caches/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
