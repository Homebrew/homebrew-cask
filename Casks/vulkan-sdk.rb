cask "vulkan-sdk" do
  version "1.2.162.1"
  sha256 "2781c334997598c2828d8a3368aef7b7c94a25204c90d5503396e40c7a03fd5c"

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.dmg"
  name "Vulkan SDK"
  desc "Development kit"
  homepage "https://vulkan.lunarg.com/sdk/home"

  livecheck do
    url "https://vulkan.lunarg.com/sdk/latest/mac.txt"
    regex(/(\d+(?:\.\d+)*)/i)
  end

  conflicts_with formula: "vulkan-headers"

  installer script: {
    executable: "bash",
    args:       ["-c", "cd '#{staged_path}' && ./install_vulkan.py --force-install"],
  }

  postflight do
    set_permissions "#{staged_path}/uninstall.sh", "+x"
  end

  uninstall script: {
    executable: "#{staged_path}/uninstall.sh",
  }

  caveats do
    files_in_usr_local
  end
end
