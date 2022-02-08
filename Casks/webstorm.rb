cask "webstorm" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3.2,213.6777.57"

  if Hardware::CPU.intel?
    sha256 "932d4920f831d1ceae68a474444c37d986277d8d3288d3aab93dd43d99336a36"
  else
    sha256 "f4788ec0c55123b1f4e14934792f65bf8040e2a2ee673e985b50b8feded60408"
  end

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.csv.first}#{arch}.dmg"
  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["WS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "WebStorm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "wstorm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.WebStorm.plist",
    "~/Library/Preferences/jetbrains.webstorm.*.plist",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
