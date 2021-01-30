import vueRouter from 'vue-router';
import Vue from 'vue';

Vue.use(vueRouter);

import OrdersTotal from "./components/views/OrdersTotal.vue";
import Users from "./components/views/Users.vue";

const routes = [
    {
        path: '/',
        component: OrdersTotal
    },
    {
        path: '/users',
        component: Users
    }
];

export default new vueRouter({
    mode: "history",
    routes
});