require "English"

class Hbc::CLI::Style < Hbc::CLI::Base
  def self.help
    "checks Cask style using RuboCop"
  end

  def self.run(*args)
    retval = new(args).run
    raise Hbc::CaskError, "style check failed" unless retval
  end

  attr_reader :args
  def initialize(args)
    @args = args
  end

  def run
    install_rubocop
    system "rubocop", *rubocop_args, "--", *cask_paths
    $CHILD_STATUS.success?
  end

  RUBOCOP_CASK_VERSION = "~> 0.8.3".freeze

  def install_rubocop
    Hbc::Utils.capture_stderr do
      begin
        Homebrew.install_gem_setup_path! "rubocop-cask", RUBOCOP_CASK_VERSION, "rubocop"
      rescue SystemExit
        raise Hbc::CaskError, $stderr.string.chomp.sub("#{::Tty.red}Error#{::Tty.reset}: ", "")
      end
    end
  end

  def cask_paths
    @cask_paths ||= if cask_tokens.empty?
                      Hbc.all_tapped_cask_dirs
                    elsif cask_tokens.any? { |file| File.exist?(file) }
                      cask_tokens
                    else
                      cask_tokens.map { |token| Hbc.path(token) }
                    end
  end

  def cask_tokens
    @cask_tokens ||= self.class.cask_tokens_from(args)
  end

  def rubocop_args
    fix? ? autocorrect_args : default_args
  end

  def default_args
    ["--format", "simple", "--force-exclusion", "--config", rubocop_config]
  end

  def autocorrect_args
    default_args + ["--auto-correct"]
  end

  def rubocop_config
    Hbc.default_tap.cask_dir.join(".rubocop.yml")
  end

  def fix?
    args.any? { |arg| arg =~ %r{--(fix|(auto-?)?correct)} }
  end
end
