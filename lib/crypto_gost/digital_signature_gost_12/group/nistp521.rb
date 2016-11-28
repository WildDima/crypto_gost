# Source: "Curve P-256" from http://csrc.nist.gov/groups/ST/toolkit/documents/dss/NISTReCur.doc

module CryptoGost
  module DigitalSignatureGost12
    class Group
      Nistp521 = new(
        name: 'nistp521',
        p: 68647976601306097149819007990813932172694353_00143305409394463459185543183397656052122559_64066145455497729631139148085803712198799971_6643812574028291115057151,
        a: -3,
        b: 0x051_953eb961_8e1c9a1f_929a21a0_b68540ee_a2da725b_99b315f3_b8b48991_8ef109e1_56193951_ec7e937b_1652c0bd_3bb1bf07_3573df88_3d2c34f1_ef451fd4_6b503f00,
        gx: 0x00c6_858e06b7_0404e9cd_9e3ecb66_2395b442_9c648139_053fb521_f828af60_6b4d3dba_a14b5e77_efe75928_fe1dc127_a2ffa8de_3348b3c1_856a429b_f97e7e31_c2e5bd66,
        gy: 0x0118_39296a78_9a3bc004_5c8a5fb4_2c7d1bd9_98f54449_579b4468_17afbd17_273e662c_97ee7299_5ef42640_c550b901_3fad0761_353c7086_a272c240_88be9476_9fd16650,
        n: 68647976601306097149819007990813932172694353_00143305409394463459185543183397655394245057_74633321719753296399637136332111386476861244_0380340372808892707005449,
        h: nil,  # cofactor not given in NIST document
      )
    end
  end
end
