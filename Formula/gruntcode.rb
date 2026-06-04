# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.10"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.10/gruntcode-darwin-arm64.tar.gz"
      sha256 "f0e0f484f804297a8b7f7b8ad5ae516f362fd5e9b35d48df0d531acdece1a131"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.10/gruntcode-linux-arm64.tar.gz"
      sha256 "6ede975739bba8501063660ad146292feb27fa542f97787df79bd2d6783a5ae0"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.10/gruntcode-linux-x64.tar.gz"
      sha256 "8c9aa1214f8f5ea5f711376f2db6eb715c799792fa7335a18b700c6f5f3c1f09"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
