cask "yourkit-java-profiler" do
  version "2020.7,b369"
  sha256 "b52ac5e32154b6f69665db1ae9f4016d36d67a3278849a827f2106b391af341a"

  url "https://www.yourkit.com/download/YourKit-JavaProfiler-#{version.before_comma}-#{version.after_comma}.dmg",
      user_agent: :fake
  appcast "https://www.yourkit.com/download/"
  name "YourKit Java Profiler"
  homepage "https://www.yourkit.com/features/"

  auto_updates true

  app "YourKit-Java-Profiler-#{version.before_comma}.app"
end
