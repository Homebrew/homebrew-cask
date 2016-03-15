cask 'visual-paradigm' do
  version '13.0,20160302'
  sha256 '9e17b4c4a69b4de6a83519e460cff9585d7a3007cebfeef389316579e9e85e0e'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'
  license :commercial

  installer script: "Visual Paradigm #{version.before_comma} Installer.app/Contents/MacOS/JavaApplicationStub",
            args:   ['-q'],
            sudo:   false

  uninstall script: {
                      executable: "/Applications/Visual Paradigm #{version.before_comma}/uninstaller/uninstall.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
