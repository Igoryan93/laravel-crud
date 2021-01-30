import vueRouter from 'vue-router';
import Vue from 'vue';

Vue.use(vueRouter);

import OrdersTotal from "./components/views/OrdersTotal.vue";

const routes = [
    {
        path: '/',
        component: OrdersTotal
    }
];

export default new vueRouter({
    mode: "history",
    routes
});