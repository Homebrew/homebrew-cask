cask "universal-gcode-platform" do
  version "2.0.8"
  sha256 "10d1cd92c55d241f2d41235e0d29b903e1619a81838d2d438b1bd7a06b15433e"

  url "https://ugs.jfrog.io/ugs/UGS/v#{version}/ugs-platform-app-ios.dmg",
      verified: "https://ugs.jfrog.io/ugs/UGS/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url "https://github.com/winder/Universal-G-Code-Sender"
    strategy :git
  end

  app "Universal Gcode Platform.app"

  zap trash: [
    "~/Library/Application Support/ugsplatform",
    "~/Library/Preferences/ugs",
  ]

  caveats <<~EOS
    SECURITY WARNING

    The UGS developers do not sign their code (https://github.com/winder/Universal-G-Code-Sender/issues/1351).

    As a result, later versions of MacOS will prevent UGS from starting by default, with the error message:

        Universal Gcode Platform cannot be opened because the developer cannot be verified.

        macOS cannot verify that this app is free from malware.

    If you choose to trust the installed code, you can start UGS for the first time by:

      1. Open the Finder and locate the application (it should be in /Applications)
      2. Control+Click on the application's icon, and choose Open
      3. You will be given a further warning and will need to click Open if you want to proceed.

    This procedure will create an exception in your security settings and start UGS.
    After you have done this, you will be able to just click on the application
    icon to start UGS.

    _Note that you will need to repeat this procedure each time you update UGS.
  EOS
end
