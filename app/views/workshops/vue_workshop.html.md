## Getting started with Vue.js, for people who hear React is cool
Download starter files in the [workshop repo](https://github.com/rbnhmll/vue-workshop)

### Welcome to Intro to Vue.js

Vue.js is a progressive javascript framework for building web applications, or extending the functionality of an existing site to enrich the interactive experience. In today's workshop we will go through the steps of building and refactoring a web application which searches github repositories. We will start by using the Vue CDN for a quick and easy set-up, before moving to the official CLI tools provided by Vue to help make our application more modular, maintainable and scalable.

### What is Vue?

* Javascript framework from building front-end UI
* In the same category as React, Preact, Angular and Ember
* Create more maintainable codebase

### Why Vue?

- Easy to learn
- It's just JS
- Size:
  Relatively small library compared with others

| Library | Minified | GZipped |
| --------|:--------:| :------:|
| Angular 2 | 566K | 111K |
| Ember 2.2.0 | 435K | 111K |
| React 16.2.0 + React DOM | 97.5K | 31.8K |
| **Vue 2.4.2** | **58.8K** | **20.9K** |
| Preact 7.2.0 | 16K | 4K |


\* Source: https://gist.github.com/Restuta/cda69e50a853aa64912d

* Features
  * Progressive Javascript framework (can add to just one part of your application)
  * Scalable eco-system
  * Reusable components, with it's own template, scripts and styles
  * All the best parts of React and Angular, without the bloat.

### Get started with just the CDN

* Grab the CDN or download the .js file
* Setting up new Vue Instance
  * el
  * data (state)
  * methods
* Vue Directives (and arguments)
  * `v-if` (conditional rendering)
  * `v-for` (render loop)
  * `v-on` (event binding) [shortcut: `@`]
  * `v-model` (two-way data binding)
  * `v-bind` (attributes) [shortcut: `:`]
* Directive modifiers
  * `v-on:submit.prevent="onSubmit"`

### Using vue-cli (like create-react-app)

* Install vue-cli (https://github.com/vuejs/vue-cli), `$ npm install -g vue-cli`
* Create project
  `$ vue init <template-name> <project-name>`
* Start Server
  `$ npm run dev`
* Download example project `cli--COMPLETE`
* Vue plugin for Chrome and Firefox
* Style scoping (and SASS with node-sass)
  `$ npm install sass-loader node-sass --save-dev`
* Single File Components
* Props
* computed properties
* Lifecycle Hooks?
* Notes and Gotchas:
  * In components, must use `data` as a function which returns an object, or it will not work

### Resources

* [Vue.js docs](https://vuejs.org/v2/guide/)
* [Good Workshops](http://goodworkshops.club/)

Vue has a bunch of additional tools which parallel other popular frameworks

* [Vuex](https://vuex.vuejs.org/en/) (like Redux)
* [Vue-router](https://router.vuejs.org/en/) (like React-router)
* [Nuxt.js](https://nuxtjs.org/) (SSR, like Next.js)
