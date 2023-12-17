cask "vlc-webplugin" do
  version "3.0.4"
  sha256 "016aa490a7d924d83f07f46f8f09b74848baa3ca344ef2b02f0e30cb30436fdd"

  url "https://get.videolan.org/vlc/#{version}/macosx/VLC-webplugin-#{version}.dmg"
  name "VLC for OS X web plugin"
  desc "Web browser plugin"
  homepage "https://www.videolan.org/vlc/download-macosx.html"

  deprecate! date: "2023-12-17", because: :discontinued

  internet_plugin "VLC Plugin.plugin"
end
