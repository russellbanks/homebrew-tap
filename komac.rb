class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.1/komac-2.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "d3e771fcbb370edbed28ab3fa40e9089254dc619c698df6cd07ebef184ec18e7"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.1/komac-2.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "330caf2c88635a13c82a9380a9589d1b5713a63d82e0b01174c1d0a4b9f4684c"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.1/komac-2.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "201728931bad4e4ff71c1bc1abf09d34db2850a4721bf5cee1f163e10d7c70f5"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.1/komac-2.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8e550b557ddff501876d92ee36dc3d904dd7d38a9bfcdb2b23ae8d5d9e0ba60"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
