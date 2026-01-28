class Slackline < Formula
  desc "Read-only Slack CLI for AI agents"
  homepage "https://github.com/co42/slackline"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/co42/slackline/releases/download/v0.3.1/slackline-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "eca31e40bccc8bd1843272a13ed70d60706af1c3a010a409e059ee64c9a9c0de"
    else
      url "https://github.com/co42/slackline/releases/download/v0.3.1/slackline-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "12636e55c903e5415941e1243ca2fed6f9c3ff8913e74817849143e30bf68c00"
    end
  end

  on_linux do
    url "https://github.com/co42/slackline/releases/download/v0.3.1/slackline-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "722d9ca4f65def2017fddfbe8364865d22688ef1b0c9097c823c42d3f1c1afe5"
  end

  def install
    bin.install "slackline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slackline --version")
  end
end
