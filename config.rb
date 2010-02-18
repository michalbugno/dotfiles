#!/usr/local/bin/ruby

require "fileutils"

module Config
  COMMANDS = ["fetch", "update", "list", "diff", "help"]
  HOME     = File.join(File::SEPARATOR, "Users", "msq")
  CURRENT  = ENV["PWD"]
  TARGETS  = [
    [File.join(File::SEPARATOR, "etc", "hosts"), File.join("etc", "hosts")],
    [File.join(HOME, ".gemrc"), File.join(CURRENT, ".gemrc")],
    [File.join(HOME, ".gitconfig"), File.join(CURRENT, ".gitconfig")],
    [File.join(HOME, ".mplayer"), File.join(CURRENT, ".mplayer")],
    [File.join(HOME, ".profile"), File.join(CURRENT, ".profile")],
    [File.join(HOME, ".vim"), File.join(CURRENT, ".vim")],
    [File.join(HOME, ".vimrc"), File.join(CURRENT, ".vimrc")],
  ].sort { |a, b| a[0] <=> b[0] }

  class Base
    def initialize(args)
      @command = find_command(args.first || "help")
    end

    def exec
      send(@command)
    end

    private
    def find_command(command)
      commands = COMMANDS.select { |cmd| cmd =~ Regexp.new("^%s" % command) }
      raise ArgumentError.new("Command %p not found" % [command]) if commands.empty?
      raise ArgumentError.new("Please be more specific: %p" % [commands]) if commands.size > 1
      commands.first.to_sym
    end

    def list
      len = TARGETS.map { |_, r| r.length }.max
      str_format = "%-7s %-" + len.to_s + "s  <=>  %s"

      puts str_format % ["type", "repo_file", "original_file"]
      puts

      targets = TARGETS.map do |orig_path, repo_path|
        if File.directory?(repo_path)
          info = "dir"
        elsif File.file?(repo_path)
          info = "file"
        end
        str_format % [info, repo_path, orig_path]
      end
      puts targets
      return 0
    end

    def fetch
      len = TARGETS.map { |s, _| s.length }.max
      str_format = "%-" + len.to_s + "s => %s"
      begin
        TARGETS.each do |orig_path, repo_path|
          puts str_format % [orig_path, repo_path]
          if File.directory?(orig_path)
            FileUtils.cp_r(File.join(orig_path, "."), repo_path)
          else
            FileUtils.cp_r(orig_path, repo_path)
          end
        end
        return 0
      rescue Exception => e
        puts e.message
        return 1
      end
    end

    def help
      txt = "Usage: %s COMMAND\n\nCommands:\n" +
        "  fetch     Copy files FROM filesystem\n" +
        "  update    Copy files TO filesystem\n" +
        "  list      List files which will be affected\n" +
        "  diff      Show differences between files\n" +
        "  help      This message"
      puts txt % $0
      return 0
    end
  end
end

begin
  cfg = Config::Base.new(ARGV)
rescue ArgumentError => e
  puts e.message
  exit 1
end

begin
  status = cfg.exec
rescue NoMethodError => e
  puts "This feature is not implemented"
  exit 2
end

exit status
