# Source: http://www.secg.org/collateral/sec2_final.pdf

module CryptoGost
  module DigitalSignatureGost12
    class Group
      Secp160r1 = new(
        name: 'secp160r1',
        p: 0xFFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_7FFFFFFF,
        a: 0xFFFFFFFF_FFFFFFFF_FFFFFFFF_FFFFFFFF_7FFFFFFC,
        b: 0x1C97BEFC_54BD7A8B_65ACF89F_81D4D4AD_C565FA45,
        gx: 0x4A96B568_8EF57328_46646989_68C38BB9_13CBFC82,
        gy: 0x23A62855_3168947D_59DCC912_04235137_7AC5FB32,
        n: 0x01_00000000_00000000_0001F4C8_F927AED3_CA752257,
        h: 1,
      )
    end
  end
end
