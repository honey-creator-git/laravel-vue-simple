require('./bootstrap');
import Vue from 'vue';
window.Vue = require('vue');


import Language from './components/Language.vue';
import VueRouter from 'vue-router';
import VueAxios from 'vue-axios';
import axios from 'axios';





Vue.use(VueRouter);
Vue.use(VueAxios, axios);



const app = new Vue({
    el: '#app',
    render: h => h(Language),
});
