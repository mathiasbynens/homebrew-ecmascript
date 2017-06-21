class Chakra < Formula
  desc "The core part of the Chakra JavaScript engine that powers Microsoft Edge"
  homepage "https://github.com/Microsoft/ChakraCore"
  url "https://aka.ms/chakracore/cc_osx_x64_1_5_1"
  sha256 "8e85cfc21a693ae1b02373228a3a921485aa6567faa97dcdb904e030632b908b"

  def install
    lib.install "lib/libChakraCore.dylib"
    bin.install "bin/ch" => "chakra"
  end

  test do
    (testpath/"test.js").write("print('Hello!');\n")
    assert_equal "Hello!", shell_output("#{bin}/chakra test.js").chomp
  end
end
