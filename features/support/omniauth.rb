module OmniAuthFixtures

  def self.facebook_response
    {provider: 'facebook',
     uid: 10205522242159630,
     info:
         {email: 'thomas@craftacademy.se',
          name: 'Thomas Ochman',
          image: 'http://graph.facebook.com/v2.6/10205522242159630/picture'},
     credentials:
         {token:
              'EAAXC253O740BANfJYLjz2LCzT1UcfuEsoHpZBMAifdiud8sulF2LIfjDy5BeGiNPEPQjUn7xpvAu0neqnGeoCAvCU2KIucyP5sYNQDaDtCj06UmOF2POEq8ZAajS2zaQ4B7uIIRgv4p3wlACmh9f9MsMnDZB6gZD',
          expires_at: 1517839337,
          expires: true},
     extra:
         {raw_info:
              {name: 'Thomas Ochman', email: 'thomas@craftacademy.se', id: '10205522242159630'}}}

  end

  def self.twitter_response
    {
        provider: 'twitter',
        uid: '123456',
        info: {
            nickname: 'johnqpublic',
            name: 'John Q Public',
            location: 'Anytown, USA',
            image: 'http://si0.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
            description: 'a very normal guy.',
            urls: {
                Website: nil,
                Twitter: 'https://twitter.com/johnqpublic'
            }
        },
        credentials: {
            token: 'a1b2c3d4...', # The OAuth 2.0 access token
            secret: 'abcdef1234'
        },
        extra: {
            access_token: "", # An OAuth::AccessToken object
            raw_info: {
                name: 'John Q Public',
                listed_count: 0,
                profile_sidebar_border_color: '181A1E',
                url: nil,
                lang: 'en',
                statuses_count: 129,
                profile_image_url: 'http://si0.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
                profile_background_image_url_https: 'https://twimg0-a.akamaihd.net/profile_background_images/229171796/pattern_036.gif',
                location: 'Anytown, USA',
                follow_request_sent: false,
                id: 123456,
                profile_background_tile: true,
                profile_sidebar_fill_color: '666666',
                followers_count: 1,
                default_profile_image: false,
                screen_name: "",
                following: false,
                utc_offset: -3600,
                verified: false,
                favourites_count: 0,
                profile_background_color: '1A1B1F',
                is_translator: false,
                friends_count: 1,
                notifications: false,
                geo_enabled: true,
                profile_background_image_url: 'http://twimg0-a.akamaihd.net/profile_background_images/229171796/pattern_036.gif',
                protected: false,
                description: 'a very normal guy.',
                profile_link_color: '2FC2EF',
                created_at: 'Thu Jul 4 00:00:00 +0000 2013',
                id_str: '123456',
                profile_image_url_https: 'https://si0.twimg.com/sticky/default_profile_images/default_profile_2_normal.png',
                default_profile: false,
                profile_use_background_image: false,
                entities: {
                    description: {
                        urls: []
                    }
                },
                profile_text_color: '666666',
                contributors_enabled: false
            }
        }
    }
  end

  def self.github_response
    {
        provider: 'github',
        uid: '123456',
        info: {
            nickname: 'tochman',
            email: 'tochman10@gmail.com',
            name: 'Thomas Ochman'
        }
    }
  end

  def self.google_oauth2_response
    {
        provider: 'google_oauth2',
        uid: '123456789101112130122',
        info: {
            email: 'joe@bloggs.com',
            first_name: 'Joe',
            image: 'https://robohash.org/sitsequiquia.png?size=512x512',
            last_name: 'Bloggs',
            name: 'Joe Bloggs',
            urls: {Google: 'https://plus.google.com/494850544950524948535348525457565050575557'}
        },
        credentials: {
            expires: true,
            expires_at: 1450062184,
            refresh_token: 'XYZW...',
            token: 'ABCDEF...'
        },
        extra: {
            id_info: {
                at_hash: 'abcdefg',
                aud: '50906091245.apps.googleusercontent.com',
                azp: '50906091245.apps.googleusercontent.com',
                email: 'joe@bloggs.com',
                email_verified: true,
                exp: 1450062184,
                iat: 1450058584,
                iss: 'accounts.google.com',
                sub: '102612410550469822979'
            },
            id_token: 'abcdefghijklmnopqrstuvwxyz',
            raw_info: {
                email: 'joe@bloggs.com',
                email_verified: 'true',
                family_name: 'Bloggs',
                gender: 'male',
                given_name: 'Joe',
                kind: 'plus#personOpenIdConnect',
                locale: 'en',
                name: 'Joe Bloggs',
                picture: 'https://robohash.org/sitsequiquia.png?size=512x512',
                profile: 'https://plus.google.com/494850544950524948535348525457565050575557',
                sub: '494850544950524948535348525457565050575557'
            },
        }
    }
  end
end