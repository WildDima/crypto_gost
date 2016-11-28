module CryptoGost
  module DigitalSignatureGost12
    # DigitalSignature
    #
    # @author WildDima
    class Signature
      attr_reader :r, :s
      def initialize(r:, s:)
        @r = r
        @s = s
      end
    end
  end
end
