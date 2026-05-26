# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
#
# Releases: https://github.com/grunt-it/gruntcode/releases
# Source:   https://github.com/grunt-it/gruntcode
# Tracking: hivemind #222 for patch series + roadmap
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.3"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.3/gruntcode-darwin-arm64.tar.gz"
      sha256 "fa10f2378ab9b229b4812bee7c1e7bb4c0b5dd4cd26daf67bea6e121b510e705"
    end
    # darwin-x64 still queued in CI (macos-13 runner congestion). Will land in
    # v1.15.10-grunt.4 (or a tap follow-up commit once asset uploads).
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.3/gruntcode-linux-arm64.tar.gz"
      sha256 "1989f70f6641ffceb19784c3b33d41a717946aa0050aa9ee297d34abc132a73c"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.3/gruntcode-linux-x64.tar.gz"
      sha256 "e88e55f77680a77089622d4151451b9be273f3c2470c5320d252dcf111af9bea"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
