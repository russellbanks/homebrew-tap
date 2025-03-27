class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.11.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.2/komac-2.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "e45e2f13d1144127cdbb5ac080a088ce295558ebed491464bbc6622e339bd2c8"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.2/komac-2.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "49c4b55caa3109825119e4aa17ebd58ac778c07019822c2ac0add37579c4872a"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.2/komac-2.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d47459ba668e3d95d3a620bea18e41e3425b97313b25253d8bd7970a34aaf983"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.11.2/komac-2.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1607feeb57050e672174472c349930176b3b5c0e0ab833af526a09027979790"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
