// require('./bootstrap');
import 'vuetify/dist/vuetify.min.css' // Ensure you are using css-loader
import Vue from 'vue';
import Vuetify from 'vuetify';
import VueRouter from 'vue-router'

import App from './components/App';

import CreatePost from './components/CreatePost';
import ViewPosts from './components/ViewPosts';
import AuthForm from './components/AuthForm.vue';
import LogOut from './components/LogOut';
import EditPost from './components/EditPost';


window.Vue = require('vue');
Vue.use(Vuetify);
Vue.use(VueRouter)

// Vue.component('App', require('./components/App').default);

const routes = [
    { path: '/edit/:id', component: EditPost, name: 'EditPost' },
    { path: '/logout', component: LogOut, name: 'LogOut' },
    { path: '/auth', component: AuthForm, name: 'Auth' },
    { path: '/posts', component: ViewPosts, name: 'ViewPosts' },
    { path: '/create', component: CreatePost, name: 'CreatePost' },
    { path: '/', component: ViewPosts, name: 'Home' },

];

const router = new VueRouter({
    routes,
});

const app = new Vue({
    router,
    components: { App },
}).$mount('#app');
