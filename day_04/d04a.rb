require 'digest/md5'

INPUT = 'ckczppom'
number = 1

loop do
  hash = Digest::MD5.hexdigest(INPUT + number.to_s)
  p "#{number}  ->  #{hash}"
  exit if hash.start_with?('00000')
  number += 1
end
