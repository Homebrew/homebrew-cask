require "test_helper"

describe "Syntax check" do
  project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
  backend_files = Dir[project_root.join("**", "*.rb")].reject { |f| f.match %r{/vendor/|/Casks/} }
  interpreter = RUBY_PATH
  flags = %w[-c]
  flags.unshift "--disable-all"
  backend_files.each do |file|
    it "#{file} is valid Ruby" do
      args = flags + ["--", file]
      shutup do
        raise SyntaxError, "#{file} failed syntax check" unless system(interpreter, *args)
      end
    end
  end
end
