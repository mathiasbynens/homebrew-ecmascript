class Chakra < Formula
  desc "The core part of the JavaScript engine that powers Microsoft Edge"
  homepage "https://github.com/Microsoft/ChakraCore"
  url "https://aka.ms/chakracore/cc_osx_x64_1_7_2"
  sha256 "58b5dd346c01b39b6c2c1fffae261900e9ead071af4404f3c6c0747161462ece"

  def install
    lib.install "lib/libChakraCore.dylib"
    bin.install "bin/ch" => "chakra"
  end

  test do
    (testpath/"test.js").write("print('Hello!');\n")
    assert_equal "Hello!", shell_output("#{bin}/chakra test.js").chomp
  end
end
