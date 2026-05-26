# typed: false
# frozen_string_literal: true

# gruntcode — grunt-it soft-fork of opencode with hivemind-native patches
#
# DRAFT STATUS: this formula is a placeholder. The gruntcode binary is not yet
# released — see hivemind #222 Phase 2 for patch series progress. Once we cut
# our first tagged release (e.g. v1.15.10-grunt.1), this formula will be
# updated with real `url`, `sha256`, and `version` values and the install path
# will start working.
#
# Tracking issue: https://github.com/grunt-it/hivemind-mcp (issue #222)
class Gruntcode < Formula
  desc "grunt-it soft-fork of opencode with hivemind-native autonomous-coordinator patches"
  homepage "https://github.com/grunt-it/gruntcode"
  license "MIT"

  # Placeholder values — real release artifacts not built yet.
  version "0.0.0-draft"
  url "https://github.com/grunt-it/gruntcode/archive/refs/heads/dev.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  # Same runtime deps as opencode upstream
  depends_on "bun"

  def install
    # Placeholder build path. Real flow once we have a release pipeline:
    # 1. system "bun", "install", "--production"
    # 2. system "bun", "build", "packages/opencode/src/index.ts",
    #          "--compile", "--outfile", "gruntcode"
    # 3. bin.install "gruntcode"
    odie "gruntcode formula is a draft placeholder — see hivemind #222 Phase 2 for release status"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruntcode --version")
  end
end
