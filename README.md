# Visualify - Spotify Data Visualizer

Visualify is a browser based app that is inspired by Spotify Wrapped and combines a users realtime Spotify account data with detailed graphs. This rails backend works in conjuction with a react frontend found here: [visualify-frontend](https://github.com/gracemanzon/visualify-frontend)

- RESTful backend built with Ruby on Rails using an MVC architecture
- User authentication using JSON web tokens
- Frontend built with React and allowing Spotify API connect using OAuth
- Personalized charts genreated with the Plotly library for React

![screenshot](/assets/visualify-preview.png)

## Installation + Dependencies

- ruby 3.1.2
- rails 7.0.4
- gem "jwt"
- gem "jb"
- gem "rack-cors"

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

- Narrowing Top Artists/Top Tracks view by 6 week periods
- P5.js or CanvasSketch integration to produce personalized graphics
