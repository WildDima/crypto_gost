require 'spec_helper'

# TODO: REFACTOR
describe CryptoGost::HashGost12::HashFunction do
  context '256 bit hash, with 504 bit message' do
    message = CryptoGost::Message.from_hex '323130393837363534333231303938373635343332313039383736353433323130393837363534333231303938373635343332313039383736353433323130'
    q = CryptoGost::HashGost12::HashFunction.new(message)
    q.hashing!(digest_length: 256)
    it 'should has correct hash' do
      expect(q.hash_vector.to_hex).to eq('557be5e584fd52a449b16b0251d05d27f94ab76cbaa6da890b59d8ef1e159d')
    end
  end

  context '512 bit hash, with 504 bit message' do
    message = CryptoGost::Message.from_hex '323130393837363534333231303938373635343332313039383736353433323130393837363534333231303938373635343332313039383736353433323130'
    q = CryptoGost::HashGost12::HashFunction.new(message)
    q.hashing!(digest_length: 512)
    it 'should has correct hash' do
      expect(q.hash_vector.to_hex).to eq('486f64c1917879417fef082b3381a4e211c324f074654c38823a7b76f830ad00fa1fbae42b1285c0352f227524bc9ab16254288dd6863dccd5b9f54a1ad0541b')
    end
  end

  context '256 bit hash, with 576 bit message' do
    message = CryptoGost::Message.from_hex 'fbe2e5f0eee3c820fbeafaebef20fffbf0e1e0f0f520e0ed20e8ece0ebe5f0f2f120fff0eeec20f120faf2fee5e2202ce8f6f3ede220e8e6eee1e8f0f2d1202ce8f0f2e5e220e5d1'
    q = CryptoGost::HashGost12::HashFunction.new(message)
    q.hashing!(digest_length: 256)
    it 'should has correct hash' do
      expect(q.hash_vector.to_hex).to eq('508f7e553c06501d749a66fc28c6cac0b005746d97537fa85d9e40904efed29d')
    end
  end

  context '512 bit hash, with 576 bit message' do
    message = CryptoGost::Message.from_hex 'fbe2e5f0eee3c820fbeafaebef20fffbf0e1e0f0f520e0ed20e8ece0ebe5f0f2f120fff0eeec20f120faf2fee5e2202ce8f6f3ede220e8e6eee1e8f0f2d1202ce8f0f2e5e220e5d1'
    q = CryptoGost::HashGost12::HashFunction.new(message)
    q.hashing!(digest_length: 512)
    it 'should has correct hash' do
      expect(q.hash_vector.to_hex).to eq('28fbc9bada033b1460642bdcddb90c3fb3e56c497ccd0f62b8a2ad4935e85f037613966de4ee00531ae60f3b5a47f8dae06915d5f2f194996fcabf2622e6881e')
    end
  end
end