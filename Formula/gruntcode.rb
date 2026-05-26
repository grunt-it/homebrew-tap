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
  version "1.15.10-grunt.1"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.1/gruntcode-darwin-arm64.tar.gz"
      sha256 "ce3a232e39a691dd51db2be435ea59be4370501c606da49fb256b29037c38070"
    end
    # darwin-x64 binary deferred: macos-13 CI runner queue was bottlenecked when
    # v1.15.10-grunt.1 was cut. Will land in v1.15.10-grunt.2 (or a tap-only
    # follow-up commit if the asset gets uploaded to the same release after
    # this formula lands).
    # on_intel do
    #   url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.1/gruntcode-darwin-x64.tar.gz"
    #   sha256 "..."
    # end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.1/gruntcode-linux-arm64.tar.gz"
      sha256 "a1458534ea645f3ff02cc05762ea8680c4cde2da367e945ad8f6c8fefc959f61"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.1/gruntcode-linux-x64.tar.gz"
      sha256 "e6e5737225daa0f3baaf9a46441b9714cc2ce469c330a4046d7c48b011e23c88"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
