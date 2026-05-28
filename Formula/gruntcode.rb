# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.8"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.8/gruntcode-darwin-arm64.tar.gz"
      sha256 "e61a87bdc389520ecd43355447f80e270198eabaa86c0c35868a5be322d8fe1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.8/gruntcode-linux-arm64.tar.gz"
      sha256 "78d54764f9f66ce432388b1bf056ff3e7d4d1d5392dd97dfcdd3e5a043f2ae00"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.8/gruntcode-linux-x64.tar.gz"
      sha256 "5e6f9269b19ce67ec02a4ba4cd52f36afae1682eb7dd1f7c92a5cf46780f5cad"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
