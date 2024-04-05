class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-macos-x64.tar.gz"
      sha256 "e0de71c5addc11b1fa6a50a1971c0d900f0bfab30d2761e01f83d8cecac95d48"

      def install
        bin.install "KomacPortable-macos-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-macos-arm64.tar.gz"
      sha256 "9a26d10964047966726c814f0b9639633a6d0bfcf775e246a84c9e6d90ea3fdf"

      def install
        bin.install "KomacPortable-macos-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-linux-x64.tar.gz"
      sha256 "ffaede797a70bde51bed2fb446d9b7c443cc356a94d2d10249c78f59e5fbee92"

      def install
        bin.install "KomacPortable-linux-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-linux-x86.tar.gz"
      sha256 "e3c36129678a8a2fccadee800cdfa45e35c3ecfcd7bd5374d9a9aa642d524742"

      def install
        bin.install "KomacPortable-linux-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-linux-arm64.tar.gz"
      sha256 "95c7e9012f54c7e3387e3e105b9ae554c4b346554bfa9440e169fff9aeb34369"

      def install
        bin.install "KomacPortable-linux-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.2.0/KomacPortable-linux-armv7.tar.gz"
      sha256 "25ad624dadab9e28c1bacaa02ef72a9026a07a9f3afafc3086218460a7bbf53c"

      def install
        bin.install "KomacPortable-linux-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
