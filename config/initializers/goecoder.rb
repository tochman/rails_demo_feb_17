if Rails.env.test?
  Geocoder.configure(:lookup => :test)
  # Particular Look up
  Geocoder::Lookup::Test.add_stub(
      'Kungsgatan, Stockholm', [
      {
          latitude: 59.33440939999999,
          longitude: 18.0590473,
          address: 'Kungsgatan, Stockholm, Sweden',
          state: 'Stockholm',
          country: 'Sweden',
          country_code: 'SE'
      }
  ]
  )
  Geocoder::Lookup::Test.set_default_stub(
      [
          {
              latitude: 59.33440939999999,
              longitude: 18.0590473,
              address: 'Kungsgatan, Stockholm, Sweden',
              state: 'Stockholm',
              country: 'Sweden',
              country_code: 'SE'
          }
      ]
  )
else
  Geocoder.configure(
      timeout: 3, # geocoding service timeout (secs)
      lookup: :google,
      api_key: 'AIzaSyBHehXf04Bn6iUW-0SqO78J-xMT-SmUFe0',
      units: :km, # :km for kilometers or :mi for miles
  )

end

