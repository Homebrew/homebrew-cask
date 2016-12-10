cask 'visual-paradigm' do
  version '13.2,20161201'
  sha256 '4581f78ffb9bd73f16aa2796dfffa89e4bab64cbb127b8c8d35035829485fbd8'

  url "https://eu6.visual-paradigm.com/visual-paradigm/vp#{version.before_comma}/#{version.after_comma}/Visual_Paradigm_#{version.dots_to_underscores.gsub(',', '_')}_OSX_WithJRE.dmg"
  name 'Visual Paradigm'
  homepage 'https://www.visual-paradigm.com/'

  installer script: "Visual Paradigm #{version.before_comma} Installer.app/Contents/MacOS/JavaApplicationStub",
            args:   ['-q'],
            sudo:   false

  uninstall script: {
                      executable: "/Applications/Visual Paradigm #{version.before_comma}/uninstaller/uninstall.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
