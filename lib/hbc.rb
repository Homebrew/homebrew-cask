module Hbc; end

require "hardware"
require "hbc/extend"
require "hbc/artifact"
require "hbc/audit"
require "hbc/auditor"
require "hbc/cask"
require "hbc/without_source"
require "hbc/checkable"
require "hbc/cli"
require "hbc/cask_dependencies"
require "hbc/caveats"
require "hbc/container"
require "hbc/download"
require "hbc/download_strategy"
require "hbc/exceptions"
require "hbc/fetcher"
require "hbc/installer"
require "hbc/locations"
require "hbc/macos"
require "hbc/options"
require "hbc/pkg"
require "hbc/pretty_listing"
require "hbc/qualified_token"
require "hbc/scopes"
require "hbc/source"
require "hbc/staged"
require "hbc/system_command"
require "hbc/topological_hash"
require "hbc/underscore_supporting_uri"
require "hbc/url"
require "hbc/url_checker"
require "hbc/utils"
require "hbc/verify"
require "hbc/version"

require "vendor/plist"

module Hbc
  include Hbc::Locations
  include Hbc::Scopes
  include Hbc::Options
  include Hbc::Utils

  def self.init
    odebug "Creating directories"

    # cache
    Hbc.cache.mkpath unless Hbc.cache.exist?
    if Hbc.legacy_cache.exist?
      ohai "Migrating cached files to #{Hbc.cache}..."

      Hbc.legacy_cache.children.select(&:symlink?).each do |symlink|
        file = symlink.readlink

        new_name = file.basename
                       .sub(%r{\-((?:(\d|#{Hbc::DSL::Version::DIVIDER_REGEX})*\-\2*)*[^\-]+)$}x,
                            '--\1')

        renamed_file = Hbc.cache.join(new_name)

        if file.exist?
          puts "#{file} -> #{renamed_file}"
          FileUtils.mv(file, renamed_file)
        end

        FileUtils.rm(symlink)
      end

      FileUtils.remove_entry_secure(Hbc.legacy_cache)
    end

    # caskroom
    unless caskroom.exist?
      ohai "Creating Caskroom at #{caskroom}"
      current_user = Hbc::Utils.current_user
      if caskroom.parent.writable?
        system "/bin/mkdir", "--", caskroom
      else
        ohai "We'll set permissions properly so we won't need sudo in the future"
        toplevel_dir = caskroom
        toplevel_dir = toplevel_dir.parent until toplevel_dir.parent.root?
        unless toplevel_dir.directory?
          # If a toplevel dir such as '/opt' must be created, enforce standard permissions.
          # sudo in system is rude.
          system "/usr/bin/sudo", "--", "/bin/mkdir", "--",         toplevel_dir
          system "/usr/bin/sudo", "--", "/bin/chmod", "--", "0775", toplevel_dir
        end
        # sudo in system is rude.
        system "/usr/bin/sudo", "--", "/bin/mkdir", "-p", "--", caskroom
        unless caskroom.parent == toplevel_dir
          system "/usr/bin/sudo", "--", "/usr/sbin/chown", "-R", "--", "#{current_user}:staff", caskroom.parent.to_s
        end
      end
    end
  end

  def self.load(query)
    odebug "Loading Cask definitions"
    cask = Hbc::Source.for_query(query).load
    cask.dumpcask
    cask
  end
end
