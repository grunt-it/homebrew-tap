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
  version "1.15.10-grunt.2"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.2/gruntcode-darwin-arm64.tar.gz"
      sha256 "06ad549b780640e96531bc50599546823801185cb52f9ee9cadec77dd56ca2e9"
    end
    # darwin-x64 binary still queued in CI for this release. Will land in
    # v1.15.10-grunt.3 (or a tap follow-up commit once the asset uploads
    # to v1.15.10-grunt.2 after the macos-13 runner becomes available).
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.2/gruntcode-linux-arm64.tar.gz"
      sha256 "686fa2e0e337606c4642eddf803be338495aadf279e90cfe7e99938bd948ac69"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.2/gruntcode-linux-x64.tar.gz"
      sha256 "758e41045d2a394b9cda4bb4444f8d552a8936b6fbc4472ec4f9193a5038f1bd"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
