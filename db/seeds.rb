# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NewsAgency.create(name: 'CraftA Academy', street_address: 'Holtermansgatan 1D', post_code: '411 29', city: 'Gothenburg')

Article.create(title: 'Ruby 2.5.0-preview1 Released',
               content: 'We are pleased to announce the release of Ruby 2.5.0-preview1.

Ruby 2.5.0-preview1 is the first preview release toward Ruby 2.5.0. It introduces some new features and performance improvements, for example:

New Features
Print backtrace and error message in reverse order if STDERR is unchanged and a tty. [Feature #8661] [experimental]

Top-level constant look-up is removed. [Feature #11547]

rescue/else/ensure are allowed inside do/end blocks. [Feature #12906]

yield_self [Feature #6721]

')


Article.create(title: 'Buffer underrun vulnerability in Kernel.sprintf',
               content: 'There is a buffer underrun vulnerability in the sprintf method of Kernel module. This vulnerability has been assigned the CVE identifier CVE-2017-0898.

Details
If a malicious format string which contains a precious specifier (*) is passed and a huge minus value is also passed to the specifier, buffer underrun may be caused. In such situation, the result may contains heap, or the Ruby interpreter may crash.

All users running an affected release should upgrade immediately.')

