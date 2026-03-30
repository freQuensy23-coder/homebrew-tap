class Tgs < Formula
  desc "Send files and folders to Telegram from the terminal"
  homepage "https://github.com/freQuensy23-coder/tgs"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/freQuensy23-coder/tgs/releases/download/v0.1.0/tgs-darwin-arm64.tar.gz"
      sha256 "b0ab0d8bbe5a58fb63a73c8e503d384e54d6d2b1ea7b2248e934f2d64e6a7fbd"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/tgs/releases/download/v0.1.0/tgs-darwin-amd64.tar.gz"
      sha256 "97462daf1b60ee0f7d5e34f6956edc160d86d227d040ef0566bde76569102c28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/freQuensy23-coder/tgs/releases/download/v0.1.0/tgs-linux-arm64.tar.gz"
      sha256 "508c53cba21913cd4372ad1343b0008cb33c175abe9e3c6ee8bdbe665451f5d4"
    end
    on_intel do
      url "https://github.com/freQuensy23-coder/tgs/releases/download/v0.1.0/tgs-linux-amd64.tar.gz"
      sha256 "e588710b8635ee867db94137661840f19409510481138bc5023ed36910e3d74c"
    end
  end

  def install
    bin.install Dir["tgs-*"].first => "tgs"
  end

  test do
    assert_match "send files to Telegram", shell_output("#{bin}/tgs")
  end
end
