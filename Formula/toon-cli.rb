class ToonCli < Formula
  desc "Blazing-fast JSON-to-TOON converter"
  homepage "https://github.com/freQuensy23-coder/toon-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v#{version}/toon-cli-macos-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v#{version}/toon-cli-macos-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v#{version}/toon-cli-linux-arm64"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/toon-cli/releases/download/v#{version}/toon-cli-linux-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install stable.url.split("/").last => "toon-cli"
  end

  test do
    pipe_output("#{bin}/toon-cli", '{"a":1}', 0)
  end
end
