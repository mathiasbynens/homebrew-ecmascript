class Spidermonkey < Formula
  desc "Mozilla's JavaScript engine, as used in Firefox"
  homepage "https://developer.mozilla.org/en/SpiderMonkey"
  url "https://archive.mozilla.org/pub/firefox/releases/58.0b5/jsshell/jsshell-mac.zip"
  version "58.0b5"
  sha256 "50582496ad8c683b0e88d3a4be506f6eef3b10f3977ab40891babcaf6f023657"

  def install
    lib.install "libmozglue.dylib", "libnss3.dylib"
    bin.install "js" => "spidermonkey"
    bin.install_symlink "spidermonkey" => "sm"
  end

  test do
    (testpath/"test.js").write("print('Hello!');\n")
    assert_equal "Hello!", shell_output("#{bin}/spidermonkey test.js").chomp
  end
end
