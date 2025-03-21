class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.11.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.1/komac-2.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "62d6757b5f769ab92c7bca895f24b0a2c11b96703c29bd840d60c97ed86a2912"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.1/komac-2.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "e5bba239fba928416c85c86b757a8b2542e752ac0a462b07058d9f13f9e4d0a3"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.1/komac-2.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1da1eb4a9039fcc1cfba7f4ded94060a2d0b9c4e2f031d5d0be4e20f95a77cd"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.1/komac-2.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c4920d5d0a51240c08505d61916c5b4be082c4c12bcee9df18d8fa3c6ffa81f"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
