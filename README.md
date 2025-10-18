# ProjectSenpai
**ProjectSenpai** is a web application that leverages an AI-powered chatbot to help users generate and refine ideas for web development projects through:
- Interactive prompts
- Chatbot suggestion of features, technologies, and project directions

### Special Feature
🤖 **AI Chatbot** - Gives users ideas and suggestions on how they can construct their web development projects. 

App Home: https://project-senpai-247cdb9e453e.herokuapp.com

## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements

## Team Members
- [Richard Williams](www.linkedin.com/in/richard-williams-65a39b33a)
- [Alonzo Tomohiko Anderson](http://www.linkedin.com/in/alonzomori)
- [Andrew Leemhuis](https://www.linkedin.com/in/andrew-leemhuis-01482718/)

