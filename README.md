# fibonacci_api_endpoint

Setup:
I decided to build my own API without using Firebase. I set it up in Rails and used the "Cors" gem for cross-origin permissions knowing that there would have been some issues due to the user page (client side) requesting informations. To test it I used "Insomnia" before fetching data from my user endpoint.

Instruction:
- Clone the repo
- cd fibonacci_api_endpoints
- run the commands:
   * bundle install (to install the gems)
   * rails db:migrate (to run the migration)
   * rails db:seed (to seed the data)
   * rails s (to start the server on port 3000)


