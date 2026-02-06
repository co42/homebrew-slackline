class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.4.1/slackline-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "273a0e26185f4483d6d9f59a23957037922bbd12a298babd2b0473b8bb3ca8a4"
    else
      url "https://github.com/co42/slackline/releases/download/v0.4.1/slackline-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "0848df1d2d61ff8b2b29cff8b4ac9125c164e5839550896c6c47dd7532935287"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.4.1/slackline-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "25b545f224562f1a4ee8acc8ae97ff06202dfe1e4cd0c38c18023ecf1bc0c16a"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
