# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.5"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.5/gruntcode-darwin-arm64.tar.gz"
      sha256 "ebc467c45307ce377939f0facee980eb5745eaba84d1501bdc718501115d7406"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.5/gruntcode-linux-arm64.tar.gz"
      sha256 "d25fd3046db81b50c2aa8de5b56aa2a0e4ec4835a9ffbad034693b01317167ca"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.5/gruntcode-linux-x64.tar.gz"
      sha256 "db7a8979e5ecbc2e35e67529cf6e4bea47eb2e9a07eee4039444cba3f574b758"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
