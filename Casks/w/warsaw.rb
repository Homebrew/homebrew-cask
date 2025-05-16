cask "warsaw" do
  version :latest
  sha256 :no_check

  url "https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup.pkg",
      verified: "cloud.gastecnologia.com.br/bb/downloads/ws/"
  name "Warsaw"
  desc "Security software for online banking in Brazil"
  homepage "https://www.topazevolution.com/"

  pkg "warsaw_setup.pkg"

  uninstall_postflight do
    ["Warsaw Personal CA", "127.0.0.1"].each do |cert_name|
      stdout, * = system_command "/usr/bin/security",
                                 args: ["find-certificate", "-a", "-c", cert_name, "-Z"],
                                 sudo: true
      hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
      hashes.each do |h|
        system_command "/usr/bin/security",
                       args: ["delete-certificate", "-Z", h],
                       sudo: true
      end
    end
  end

  uninstall launchctl: [
              "com.topazofd.warsaw",
              "com.topazofd.warsaw.user",
            ],
            pkgutil:   "com.topazofd.warsaw"

  zap trash: [
    "~/Library/Fonts/dbldwrsw.ttf",
    "~/Library/LaunchAgents/com.topazofd.warsaw.user.plist",
    "~/Library/LaunchDaemons/com.topazofd.warsaw.plist",
    "~/private/tmp/boost_interprocess",
    "~/private/tmp/wi*",
    "~/tmp/boost_interprocess",
    "~/tmp/dbd",
    "~/tmp/upd",
    "~/tmp/wi*",
    "~/usr/local/bin/warsaw",
    "~/usr/local/etc/warsaw",
    "~/usr/local/lib/warsaw",
    "~/WS_*",
  ]
end
