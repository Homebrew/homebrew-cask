# typed: strict
# frozen_string_literal: true

require "abstract_command"
require "open3"

module Homebrew
  module Cmd
    class ListIdsInAppCmd < AbstractCommand
      cmd_args do
        usage_banner <<~EOS
          `list-ids-in-app` <path.app>

          Given a Application (app) bundle directory on disk, extract the
          associated app Bundle ID, which may be useful in a Cask uninstall
          stanza, eg

              uninstall quit: "app.id.goes.here"

          The app need not be running for this script to work.

          Bundle IDs attributed to Apple and common developer frameworks
          are excluded from the output.

          If a given app is currently running, it will be followed by a plus
          symbol '(+)' in the output. This can be verified via the command

              list_running_app_ids | grep "app.id.goes.here"

          See CONTRIBUTING.md for more information.
        EOS

        named_args :app_path, number: 1

        hide_from_man_page!
      end

      sig { override.returns(T.nilable(String)) }
      def run
        adobe = [
          "ACE",
          "AGM",
          "AXE8SharedExpat",
          "AdobeExtendScript",
          "AdobeScCore",
          "AdobeXMPCore",
          "BIB",
          "BIBUtils",
          "CoolType",
          "ESD.AdobeUpdaterLibFramework",
          "JP2K",
          "adobe_caps",
          "AcrobatPlugin",
          "AdobeResourceSynchronizer",
          "ICUConverter",
          "ICUData",
          "acrobat.assert",
          "acrobat.pdfviewerNPAPI",
          "adobepdf417pmp",
          "ahclientframework",
          "datamatrixpmp",
          "eulaframework",
          "framework",
          "linguistic",
          "qrcodepmp",
        ]
        microsoft = [
          "Automator",
          "certificate.framework",
          "chart",
          "converterlib",
          "converters",
          "excel.pde",
          "grammar",
          "igx",
          "mcp",
          "merp",
          "msls3",
          "netlib",
          "officeart",
          "ole",
          "oleo",
          "powerplant",
          "powerplantcore",
          "powerpoint.pde",
          "speller",
          "thesaurus",
          "urlmon",
          "wizard",
          "wordforms",
          "MSCommon",
          "mbuinstrument_framework",
          "mbukernel_framework",
          "rdpkit",
        ]
        exclude = [
          '^com\.apple\.',
          '^org\.andymatuschak\.Sparkle',
          "^(SDL|SDL_net|TDParseKit)$",
          '^com\.growl\.(growlframework|WebKit|iCal|GrowlAction|GrowlLauncher|GrowlPlugins)',
          "^com.adobe.(#{Regexp.union(*adobe)})",
          "^com.microsoft.(#{Regexp.union(*microsoft)})",
          '^com\.google\.(Chrome\.framework|Chrome\.helper|Keystone|BreakpadFramework|GDataFramework|Reporter)',
          '^atmo\.mac\.macho',
          '^com\.Breakpad\.crash_report_sender',
          '^com\.Cycling74\.driver\.Soundflower',
          '^com\.HumbleDaisy\.HDCrashReporter',
          '^com\.amazon\.JSONKit',
          '^com\.bensyverson\..*dvmatte',
          '^com\.binarymethod\.BGHUDAppKit',
          '^com\.blacktree\.(QSCore|QSEffects|QSFoundation|QSInterface)',
          '^com\.brandonwalkin\.BWToolkitFramework',
          '^com\.cruzapp\.TDWebThumbnail',
          '^com\.cycling74\.QTExportTool',
          '^com\.fluidapp\.(BrowserBrowserPlugIn|FluidInstance|ThumbnailPlugIn)',
          '^com\.github\.(Electron\.framework|ObjectiveGit|Squirrel)',
          '^com\.heroku\.RedisAdapter',
          '^com\.instinctivecode\.MGScopeBar',
          '^com\.intel\.nw\.helper',
          '^com\.joshaber\.RockemSockem',
          '^com\.katidev\.KTUIKit',
          '^com\.kirin\.plugin\.adapter',
          '^com\.lextek\.onix',
          '^com\.macromedia\.(Flash Player\.authplaylib|PepperFlashPlayer)',
          '^com\.mainconcept\.mc\.enc\.avc',
          '^com\.netscape\.(DefaultPlugin|MRJPlugin)',
          '^com\.nxtbgthng\.JSONKit',
          '^com\.omnigroup\.(OmniAppKit|OmniInspector|framework)',
          '^com\.oracle\.java\..*\.jdk',
          '^com\.panic\.(PanicCore|automator|CodaScriptPlugIn)',
          '^com\.pixelespresso\.cocoafob',
          '^com\.positivespinmedia\.(PSMTabBarControlFramework|PSMTabBarFramework)',
          '^com\.softube\.(Amplifier|Cabinet)',
          '^com\.sonic\.(AS_Storage|AuthorScriptHDMV)',
          '^com\.soundcloud\.Share-on-SoundCloud',
          '^com\.stuffit\.(format|sdk|stuffitcore)',
          '^com\.sun\.Scintilla',
          '^com\.yourcompany',
          '^coop\.plausible\.(CrashReporter|PLWeakCompatibility)',
          '^de\.buzzworks\.Quincy',
          '^de\.dstoecker\.xadmaster',
          '^isao\.sonobe\.OgreKit',
          '^jp\.hmdt\.framework\.hmdtblkappkit',
          '^net\.hockeyapp\.sdk\.mac',
          '^net\.java\.openjdk\.jre',
          '^net\.liquidx\.EyeTunes',
          '^net\.sourceforge\.Log4Cocoa',
          '^net\.sourceforge\.munt\.MT32Emu',
          '^net\.sourceforge\.skim-app\.framework',
          '^net\.wafflesoftware\.ShortcutRecorder\.framework',
          '^org\.AFNetworking\.AFNetworking',
          '^org\.boredzo\.(LMX|ISO8601DateFormatter)',
          '^org\.cocoapods\.',
          '^org\.dribin\.dave\.DDHidLib',
          '^org\.linkbackproject\.LinkBack',
          '^org\.mantle\.Mantle',
          '^org\.mozilla\.(crashreporter|plugincontainer|universalchardet|updater)',
          '^org\.python\.(python|PythonLauncher|buildapplet)',
          '^org\.qt-project\.Qt',
          '^org\.reactivecocoa\.ReactiveCocoa',
          '^org\.remotesensing\.libtiff',
          '^org\.vafer\.FeedbackReporter',
          '^org\.xiph\.(ogg|vorbis)',
          '^se\.propellerheads\..*\.library$',
        ]
        info = Pathname.glob "#{args.named.first}/**/Info.plist"
        running = list_running_app_ids
        puts info
          .filter_map { Plist.parse_xml(it.read)["CFBundleIdentifier"] }
          .reject { exclude.any? { it.match(it) } }
          .uniq.sort
          .map { running.include?(it) ? "#{it} (+)" : it }
      end

      sig { returns(T::Array[String]) }
      def list_running_app_ids
        applescript = 'tell application "System Events" to get bundle identifier of every process'
        running, = Open3.capture3("/usr/bin/osascript -e '#{applescript}'")
        running.split(/,\s*/)
      end
    end
  end
end
