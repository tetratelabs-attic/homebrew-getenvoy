# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.10.0-dev-7ed6d21-4f3df0b-darwin-release-x86_64.tar.gz"
    version "1.10.0-dev-7ed6d21-4f3df0b"
    sha256 "53c33875b86043225c2bf00471b09af0c1c168f59755f8b60c998222cbf13df4"

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /7ed6d2187df94c4cb96f7dccb8643bf764af2ccb/, %x('#{bin}/envoy --version')
    end
end
