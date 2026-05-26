# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.6"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.6/gruntcode-darwin-arm64.tar.gz"
      sha256 "840810aadbe32aab4d28d3f677591f653546778b7753a34cb4fc27120f4e152d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.6/gruntcode-linux-arm64.tar.gz"
      sha256 "41acbca04459b6990c2981d1b2e4a755639f3ab38030e48e69d90f333e72c3e4"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.6/gruntcode-linux-x64.tar.gz"
      sha256 "75f1951855fae4984dc3a77ec8060b292a87efc3e06404cc96f0fde6dd9157d9"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
