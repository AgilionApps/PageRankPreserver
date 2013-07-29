require 'rack/rewrite'
use Rack::Rewrite do
  r301 '/',          'http://agilion.com/'
  r301 /team/i,      'http://agilion.com/#team'
  r301 /community/i, 'http://agilion.com/community/'
  r301 /customers/i, 'http://agilion.com/#success-stories'
  r301 /services/i,  'http://agilion.com/#services'
  r301 /contact/i,   'http://agilion.com/#contact'
  r301 /.*/,         'http://agilion.com/'
end

run ->(env) { [200, {}, StringIO.new('http://agilion.com')] }
