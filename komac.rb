class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.6.0/komac-2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "6efee1fdd462ce87f6152b932092e944183deb73e33434ccfb9718b2db3f663e"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.6.0/komac-2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c04279c6ec79c218f864af9437ef7118743dab58ceb0c0bc7a946a32a69ba04"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.6.0/komac-2.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29b25f931ad01d19813a8ab0cca212c19b947618d8f6fcb0a484c5bc7ed1a9cc"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.6.0/komac-2.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "822812d7b2693eaf84d62e66de0ecd341823730b5911ce86c728c641296f1cee"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
