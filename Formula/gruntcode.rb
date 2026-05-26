# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.4"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.4/gruntcode-darwin-arm64.tar.gz"
      sha256 "0bf4f0c035ab91dbc6ff397da25459eb05c3507b0df6bdd5395df2e363cb34ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.4/gruntcode-linux-arm64.tar.gz"
      sha256 "9e9740df0939940a8ab5a572a26d6c3d6688236f4019e14a82fdb3753473490a"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.4/gruntcode-linux-x64.tar.gz"
      sha256 "b34c8a3dcc3428bebd2c9bd657df84432418e1d1d134ab7c5430f283a8881fc7"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
