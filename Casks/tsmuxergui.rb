cask 'tsmuxergui' do
  version '2.6.11'
  sha256 '18c46412ae595200c3c7ed1bd017f2068366d5f9fee8f8fe8d9c18a87dad2862'

  url "https://github.com/mrjayviper/homebrew-apps/releases/download/initial/tsmuxergui#{version}.zip"
  appcast 'https://forum.doom9.org/showthread.php?t=168539'
  name 'tsMuxerGUI'
  homepage 'https://forum.doom9.org/showthread.php?t=168539'

  app "tsmuxergui#{version}/tsMuxerGUI.app"
end

