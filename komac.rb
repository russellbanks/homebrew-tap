class Komac < Formula
  desc "KOtlin MAnifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "1.3.2"

  if OS.mac?
    url "https://github.com/russellbanks/Komac/releases/download/v#{version}/Komac-#{version}.dmg"
    sha256 "SHA256: 5ef282d3708a3f9a01e94baf0e962c5e94625dd68dd4956f389ac8c39ad9fdc8"
  elsif OS.linux?
    url "https://github.com/russellbanks/Komac/releases/download/v#{version}/komac-#{version}-1_amd64.deb"
    sha256 "SHA256: 4e26307f8b28439fc1e63e5e466ef446144cc158a5e1c41f40f62c1ac80bde15"
  end

  def install
    if OS.mac?
      system "/usr/bin/hdiutil", "mount", "-nobrowse", "-readonly", "-quiet", "#{cached_download}"
      cp "-R", "/Volumes/Komac/Komac.app", "#{prefix}/"
      system "/usr/bin/hdiutil", "unmount", "-quiet", "/Volumes/Komac"
      bin.write_exec_script "#{prefix}/Komac.app/Contents/MacOS/Komac"
    elsif OS.linux?
      system "dpkg", "-x", "#{cached_download}", "#{prefix}"
      bin.write_exec_script "#{prefix}/usr/bin/komac"
    end
  end

  test do
    system "#{bin}/komac", "-h"
  end
end
