class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.3.0/komac-2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f80c7c8eaea5c7a851d190a904ac3a2135515d145df69f2540abecb14babfe9e"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.3.0/komac-2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5c578cbb56c3e7526d0327cf965e826944d06f74d7f2a752062c135aab364c23"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.3.0/komac-2.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84eaa5e5344c8b1ffbab9cb78d388310d617a84727a7c3be3c562c8d663d51c4"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.3.0/komac-2.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ff852c211ecef0bdcb6d19fbd10f6c94a3d19a7110db9dc9e31184d9ec51421"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
