# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"
  version "1.15.10-grunt.11"

  on_macos do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.11/gruntcode-darwin-arm64.tar.gz"
      sha256 "c660b8a242a7990a189e96392f4a9c6fb4359a24431537fef3ac244f46aae0a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.11/gruntcode-linux-arm64.tar.gz"
      sha256 "4b2452bff14c5fb5a8ad8251f7c0bf1d8b5b9e647b71e1437d18674483943068"
    end
    on_intel do
      url "https://github.com/grunt-it/gruntcode/releases/download/v1.15.10-grunt.11/gruntcode-linux-x64.tar.gz"
      sha256 "783c1b4baa00dd97680aa71e28c79c09f199dae06140e0089d6467a8dcfc0734"
    end
  end

  def install
    bin.install "gruntcode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
